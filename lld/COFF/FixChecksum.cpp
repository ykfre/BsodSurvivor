#include <Windows.h>
#include "FiXChecksum.h"
#include <ImageHlp.h>

#pragma comment(lib, "imagehlp.lib")

bool fixChecksum(const std::string &filePath) {
  HANDLE f = INVALID_HANDLE_VALUE;

  f = CreateFileA((char *)filePath.c_str(), (GENERIC_READ | GENERIC_WRITE),
                  FILE_SHARE_READ, 0, OPEN_EXISTING, 0, 0);
  if (f == INVALID_HANDLE_VALUE) {
    return false;
  }

  LARGE_INTEGER li;
  GetFileSizeEx(f, &li);

  DWORD fsize = li.LowPart;
  HANDLE fmap = NULL;

  fmap = CreateFileMapping(f, NULL, PAGE_READWRITE, 0, fsize, NULL);

  void *fmem = MapViewOfFile(fmap, FILE_MAP_WRITE, 0, 0, 0);
  DWORD before;
  DWORD after;
  // CheckSumMappedFile is not thread-safe
  IMAGE_NT_HEADERS *hdr = CheckSumMappedFile(fmem, fsize, &before, &after);

  if (before == after)
    return true;

  if (hdr->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR64_MAGIC) {
        ((IMAGE_NT_HEADERS64 *)hdr)->OptionalHeader.CheckSum = after;

  } else if (hdr->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR32_MAGIC) {
    ((IMAGE_NT_HEADERS32 *)hdr)->OptionalHeader.CheckSum = after;
  }
  FlushViewOfFile(fmem, 0);
  FlushFileBuffers(f);
  return true;
}

#include "Module.h"
#include "eh_data.h"
#include "Platform.h"


std::vector<char> Module::read() {
  auto newPe = std::vector<char>();
  newPe.resize(size);
  read(newPe, 0, sizeof(IMAGE_DOS_HEADER));
  auto fileData = newPe.data();
  auto dosHeader = (PIMAGE_DOS_HEADER)fileData;
  read(newPe, dosHeader->e_lfanew, sizeof(IMAGE_NT_HEADERS));
  auto imageNTHeaders =
      (PIMAGE_NT_HEADERS)((char *)fileData + dosHeader->e_lfanew);

  read(newPe,
       dosHeader->e_lfanew + sizeof(DWORD) +
           (DWORD)(sizeof(IMAGE_FILE_HEADER)) +
           (DWORD)imageNTHeaders->FileHeader.SizeOfOptionalHeader,
       sizeof(IMAGE_SECTION_HEADER) *
           imageNTHeaders->FileHeader.NumberOfSections);
  for (int i = 0; i < imageNTHeaders->FileHeader.NumberOfSections; i++) {
    char *sectionLocation =
        (char *)imageNTHeaders + sizeof(DWORD) +
        (DWORD)(sizeof(IMAGE_FILE_HEADER)) +
        (DWORD)imageNTHeaders->FileHeader.SizeOfOptionalHeader;
    sectionLocation += (DWORD)sizeof(IMAGE_SECTION_HEADER) * i;
    auto sectionHeader = (PIMAGE_SECTION_HEADER)sectionLocation;
    if (sectionHeader->Characteristics & IMAGE_SCN_MEM_DISCARDABLE) {
      continue;
    }
    read(newPe, sectionHeader->VirtualAddress,
         min(sectionHeader->SizeOfRawData, sectionHeader->Misc.VirtualSize),
         sectionHeader->PointerToRawData);
  }
  return newPe;
}

void Module::read(std::vector<char> &pe, size_t offset, size_t howMuchToRead,
                  llvm::Optional<size_t> whereTo) {
  if (!whereTo.hasValue()) {
    whereTo = offset;
  }
  t_platform->readMemory((void *)(startAddr + offset),
                         pe.data() + whereTo.getValue(), howMuchToRead);
}
#include "msis/stdafx.h"
volatile int *g = nullptr;

void *operator new(size_t sz) { return ExAllocatePool(NonPagedPool, sz); }
void *operator new[](size_t sz) { return ExAllocatePool(NonPagedPool, sz); }

void operator delete(void *ptr) noexcept { ExFreePool(ptr); }

void operator delete[](void *ptr) { return ExFreePool(ptr); }

VOID DriverUnload(IN PDRIVER_OBJECT pDriverObject) {
  __debugbreak();
  return;
}

NTSTATUS realEntry(IN PDRIVER_OBJECT pDriverObject,
                   IN PUNICODE_STRING pRegistryPath) {
  auto r = g;
  __debugbreak();
  pDriverObject->DriverUnload = DriverUnload;
  __debugbreak();
  Vector<int> s;
  s.push_back(5);
  UNICODE_STRING uniName;
  OBJECT_ATTRIBUTES objAttr = {};
  objAttr = objAttr;
  RtlInitUnicodeString(
      &uniName,
      L"\\DosDevices\\C:\\WINDOWS\\example.txt"); // or
                                                  // L"\\SystemRoot\\example.txt"
  InitializeObjectAttributes(
      &objAttr, &uniName, OBJ_CASE_INSENSITIVE | OBJ_KERNEL_HANDLE, NULL, NULL);
  HANDLE handle = {};
  handle = handle;
  NTSTATUS ntstatus;
  IO_STATUS_BLOCK ioStatusBlock;

  // Do not try to perform any file operations at higher IRQL levels.
  // Instead, you may use a work item or a system worker thread to perform file
  // operations.
  if (KeGetCurrentIrql() != PASSIVE_LEVEL)
    return STATUS_INVALID_DEVICE_STATE;

  ntstatus = ZwCreateFile(&handle, GENERIC_WRITE, &objAttr, &ioStatusBlock,
                          NULL, FILE_ATTRIBUTE_NORMAL, 0, FILE_OVERWRITE_IF,
                          FILE_SYNCHRONOUS_IO_NONALERT, NULL, 0);

  return STATUS_SUCCESS;
}

extern "C" NTSTATUS DriverEntry(IN PDRIVER_OBJECT pDriverObject,
                                IN PUNICODE_STRING pRegistryPath) {

  return realEntry(pDriverObject, pRegistryPath);
} // end DriverEntry()

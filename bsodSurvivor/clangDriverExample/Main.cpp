#include "stdafx.h"
volatile int *g = nullptr;



VOID DriverUnload(IN PDRIVER_OBJECT pDriverObject) {
  __debugbreak();
  return;
}
NTSTATUS realEntry(IN PDRIVER_OBJECT pDriverObject,
                   IN PUNICODE_STRING pRegistryPath) {
  __debugbreak();
  pDriverObject->DriverUnload = DriverUnload;
  __debugbreak();
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
  __debugbreak();
  //
  realEntry(pDriverObject, pRegistryPath);
  return STATUS_SUCCESS;

} // end DriverEntry()

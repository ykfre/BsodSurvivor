#pragma once
#include "Platform.h"

class WindbgPlatform :public Platform
{
public:
  void *allocateMemory(size_t size) override;
  void deallocateMemory(void *addr) override;

  void addBp(void *addr) override;

  int getThreadId() override;

     std::vector<std::string> getNeededSymbolNames() override;

  size_t readMemory(void *addr, void *buf, size_t size) override;

  size_t writeMemory(void *addr, const void *buf, size_t size) override;

  std::bitset<128> getRegisterValue(const std::string &registerName,
                                    int frameIndex) override;

  void setRegisterValue(const std::string &registerName,
                        const std::bitset<128>& value) override;

  void resumeThread() override;

  void suspendThread() override {}

  bool runThreadPlan() override;

 private:
  std::string getCorrectRegisterName(const std::string &registerName);

  std::map<std::string, std::bitset<128>>
  getRegistersFromOutput(const std::string &windbgOutput);
};

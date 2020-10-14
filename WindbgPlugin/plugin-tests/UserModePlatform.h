#pragma once
#include "Platform.h"

class UserModePlatform : public Platform {
public:
  UserModePlatform(){};
  UserModePlatform(void *threadHandle, void *currentModule);
  void *allocateMemory(size_t size) override;
  void deallocateMemory(void *addr) override;

  void addBp(void *addr) override;

  int getThreadId() override;

  size_t readMemory(void *addr, void *buf, size_t size) override;

  size_t writeMemory(void *addr, const void *buf, size_t size) override;

  std::bitset<128> getRegisterValue(const std::string &registerName,
                                    int frameIndex) override;

  void setRegisterValue(const std::string &registerName,
                        const std::bitset<128> &value) override;

  void resumeThread() override;

  void suspendThread() override;

  bool runThreadPlan() override;

private:
  void *m_threadHandle=nullptr;
  void *m_currentModule=nullptr;
};

#pragma once
#include "Platform.h"

class UserModeThreadFactory:public ThreadFactory {
public:
  std::shared_ptr<PlatformThread> create(int tid) override;
};

class UserModeThread : public PlatformThread {
public:
  UserModeThread(void *threadHandle, void *moduleHandle);
  bool initialize() override;

  virtual void suspendThread();
  virtual void resumeThread();
  virtual int getThreadId();

  virtual std::bitset<128> getRegisterValue(const std::string &registerName,
                                            int frameIndex);
  virtual void setRegisterValue(const std::string &registerName,
                                const std::bitset<128> &value);

private:
  void *m_threadHandle;
  void *m_module;
};

class UserModePlatform : public Platform {
public:
  UserModePlatform() { };
  void *allocateMemory(size_t size) override;
  void deallocateMemory(void *addr) override;
  void addBp(void *addr) override;

  size_t readMemory(void *addr, void *buf, size_t size) override;

  size_t writeMemory(void *addr, const void *buf, size_t size) override;

  bool runThreadPlan() override;
  std::vector<std::shared_ptr<LoadedDll>> getModules() override;

  bool isUserMode() override { return true; }
};

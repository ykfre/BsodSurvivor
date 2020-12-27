#pragma once
#include "Platform.h"

class WindbgThreadFactory : public ThreadFactory {
public:
  std::shared_ptr<PlatformThread> create(int tid) override;
};



class WindbgThread:public PlatformThread {
public:
  bool initialize() override;

  void suspendThread()override{};
  void resumeThread() override;
  int getThreadId() override;

  std::bitset<128> getRegisterValue(const std::string &registerName,
                                            int frameIndex) override;
  void setRegisterValue(const std::string &registerName,
                                const std::bitset<128> &value) override;

private:
  std::string getCorrectRegisterName(const std::string &registerName);

  std::map<std::string, std::bitset<128>>
  getRegistersFromOutput(const std::string &windbgOutput);
};

class WindbgPlatform : public Platform {
public:
  WindbgPlatform();
  bool isUserMode() override;

  void *allocateMemory(size_t size) override;
  void deallocateMemory(void *addr) override;
  void addBp(void *addr) override;
  std::vector<std::string> getNeededSymbolNames() override;

  size_t readMemory(void *addr, void *buf, size_t size) override;

  [[nodiscard]] size_t writeMemory(void *addr, const void *buf,
                                   size_t size) override;

  std::vector<std::shared_ptr<LoadedDll>> getModules() override;
  bool runThreadPlan() override;
};

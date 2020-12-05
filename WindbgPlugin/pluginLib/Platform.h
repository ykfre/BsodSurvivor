#pragma once

#include "blink/LoadDllFromMemory.h"
#include <bitset>
#include <functional>
#include <map>
#include <memory>
#include <optional>
#include <string>
#include <vector>

class PlatformThread {
public:
  virtual bool initialize() = 0;

  virtual void suspendThread() = 0;
  virtual void resumeThread() = 0;
  virtual int getThreadId() = 0;

  virtual std::bitset<128> getRegisterValue(const std::string &registerName,
                                            int frameIndex) = 0;
  virtual void setRegisterValue(const std::string &registerName,
                                const std::bitset<128> &value) = 0;
};

class ThreadFactory {
public:
  virtual std::shared_ptr<PlatformThread> create(int tid) = 0;
};

class Platform {
public:
  virtual ~Platform() = default;
  virtual bool verifyPreConditions();
  virtual size_t readMemory(void *addr, void *buf, size_t size) = 0;
  virtual size_t writeMemory(void *addr, const void *buf, size_t size) = 0;
  virtual void deallocateMemory(void *where) = 0;
  virtual void *allocateMemory(size_t size) = 0;
  virtual void addBp(void *where) = 0;
  inline std::shared_ptr<PlatformThread> getCurrentThread() { return m_thread; }
  inline void setCurrentThread(const std::shared_ptr<PlatformThread> &thread) {
    m_thread = thread;
  }
  virtual std::vector<std::shared_ptr<LoadedDll>> getModules() = 0;
  virtual bool runThreadPlan() = 0;
  virtual std::vector<std::string> getNeededSymbolNames();

  void *getFunctionToBreakAddress();
  void *getCallDestructorsFunction();
  std::function<size_t(void *funcAddr, const std::vector<size_t> &args)>
      runFunc;
  std::optional<std::function<bool()>> callAllocateSpaceInStack;


protected:
  std::shared_ptr<PlatformThread> m_thread;
};

inline std::shared_ptr<Platform> g_platform;
inline std::shared_ptr<ThreadFactory> g_threadFactory;
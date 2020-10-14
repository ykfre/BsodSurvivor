#pragma once

#include <bitset>
#include <memory>
#include <string>
#include <optional>
#include <map>
#include <functional>
#include <vector>

struct Platform {
public:
  virtual ~Platform() = default;

  virtual void suspendThread() = 0;
  virtual void resumeThread() = 0;
  virtual size_t readMemory(void *addr, void *buf, size_t size) = 0;
  virtual size_t writeMemory(void *addr, const void *buf, size_t size) = 0;
  virtual int getThreadId() = 0;
  virtual std::bitset<128> getRegisterValue(const std::string &registerName,
                                            int frameIndex) = 0;
  virtual void setRegisterValue(const std::string &registerName,
                                const std::bitset<128> &value) = 0;
  virtual void deallocateMemory(void *where) = 0;
  virtual void *allocateMemory(size_t size) = 0;
  virtual void addBp(void *where) = 0;
  std::function<bool (const std::string &moduleName,
                     const std::string &functionName, void *&outAddr)>
      findSymbol;

  virtual bool
  runThreadPlan() = 0;
  virtual std::vector<std::string> getNeededSymbolNames();
  std::function<size_t(void* funcAddr, const std::vector<size_t> &args)> runFunc;
  std::optional<std::function<bool()>> callAllocateSpaceInStack;
  void *getFunctionToBreakAddress();
};

inline thread_local std::shared_ptr<Platform> t_platform;
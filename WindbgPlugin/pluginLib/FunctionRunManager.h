#pragma once
#include "Event.h"
#include <map>
#include <mutex>
#include <vector>

class FunctionRunManager 
{
public:
  std::shared_ptr<Event> registerForBpHittedForTid(int tid);
  void waitForFunctionToEnd(std::shared_ptr<Event> event, int tid);
  void notifyFunctionEnded(int tid);

private:
  std::map<int, std::vector<std::shared_ptr<Event>>> m_tidToMutexes;
  std::mutex m_tidToMutexesMutex;
};

inline FunctionRunManager g_functionRunManager;

#include "FunctionRunManager.h"



void FunctionRunManager::waitForFunctionToEnd(std::shared_ptr<Event> event, int tid) {

  event->wait();
  std::lock_guard<std::mutex> lock(m_tidToMutexesMutex);
  auto& mutexes = m_tidToMutexes[tid];
  mutexes.pop_back();
}

std::shared_ptr<Event> FunctionRunManager::registerForBpHittedForTid(int tid) {
  auto event = Event::create();
  m_tidToMutexes[tid].push_back(event);
  return event;
}

void FunctionRunManager::notifyFunctionEnded(int tid) {
  std::vector<std::shared_ptr<Event>> mutexes;
  {
    std::lock_guard<std::mutex> lock(m_tidToMutexesMutex);
    if (m_tidToMutexes.find(tid) == m_tidToMutexes.end()) {
      return;
    }
    mutexes = m_tidToMutexes[tid];
    if (mutexes.empty()) {
      return;
    }
  }

  auto currentMutex = mutexes.at(mutexes.size() - 1);
  currentMutex->notify();
}

#include "Platform.h"
#include "FunctionRunManager.h"
#include "TestsUtils.h"
#include "gtest/gtest.h"
#include <Windows.h>
class FunctionRunManagerTests : public testing::Test {};

TEST_F(FunctionRunManagerTests, TestSameThreadTwice) {
  FunctionRunManager manager;
  int tid = 0;
  auto event1 = manager.registerForBpHittedForTid(tid);
  std::thread t([&]() {
    auto event2 = manager.registerForBpHittedForTid(tid);
    std::thread t2([&]() { manager.notifyFunctionEnded(tid); });
    manager.waitForFunctionToEnd(event2, tid);
    manager.notifyFunctionEnded(tid);
    t2.join();
  });
  t.join();

  manager.waitForFunctionToEnd(event1, tid);
}

TEST_F(FunctionRunManagerTests, TestTwoThreads) {
  FunctionRunManager manager;
  int tid = 0;
  auto event1 = manager.registerForBpHittedForTid(tid);
  std::thread t([&]() {
    int tid1 = tid + 1;
    auto event2 = manager.registerForBpHittedForTid(tid1);
    std::thread t2([&]() { manager.notifyFunctionEnded(tid1); });
    manager.waitForFunctionToEnd(event2, tid1);
    manager.notifyFunctionEnded(tid);
    t2.join();
  });
  t.join();
  manager.waitForFunctionToEnd(event1, tid);
}

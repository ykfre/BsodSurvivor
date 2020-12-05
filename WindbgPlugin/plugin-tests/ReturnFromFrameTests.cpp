
#include "Commands.h"
#include "gtest/gtest.h"
#include "Config.h"
#include "Commands.h"
#include "Crt.h"
#include "ReturnFromFrameTests.h"
#include "TestsUtils.h"
#include "UserModePlatform.h"
class ReturnFromFrameTests : public TestUtils {
public:
  void SetUp() override {
    tests::returnFromFrame ::g_frameTwoMet = false;
    tests::returnFromFrame::g_counter = 0;
    TestUtils::SetUp();
  }
  void returnFromFrame(std::thread &t, bool shouldCallDestructor,
                       int untilFrameIndex = 1) {
    waitForBpNotification();
    SuspendThread(t.native_handle());
    executeCommand(t, [&](CommonCommandArgs &args) {
      g_platform->setCurrentThread(
          g_threadFactory->create(GetThreadId(t.native_handle())));
      args.selectedFrameIndex = 0;
      return commands::returnFromFrame(args, untilFrameIndex,
                                       shouldCallDestructor);
    });
    ResumeThread(t.native_handle());
  }
};

TEST_F(ReturnFromFrameTests, sanity) {
  for (auto shouldCallDestructor : std::vector<bool>{true, false}) {
    tests::returnFromFrame::g_frameTwoMet = false;
    tests::returnFromFrame::g_counter = 0;
    std::thread t(tests::returnFromFrame::sanity, shouldCallDestructor);
    returnFromFrame(t, shouldCallDestructor, 1);
    t.join();
  }
  ASSERT_TRUE(tests::returnFromFrame::g_frameTwoMet);
}

TEST_F(ReturnFromFrameTests, noDestructorsToCallTest) {
  std::thread t(tests::returnFromFrame::noDestructorsToCallTest);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, forLoopTest) {
  std::thread t(tests::returnFromFrame::forLoopTest);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, forLoopTest2) {
  std::thread t(tests::returnFromFrame::forLoopTest2);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, forLoopTest3) {
  std::thread t(tests::returnFromFrame::forLoopTest3);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, scopeInScope) {
  std::thread t(tests::returnFromFrame::scopeInScope);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, scopeInScope2) {
  std::thread t(tests::returnFromFrame::scopeInScope2);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, scopeInScope3) {
  std::thread t(tests::returnFromFrame::scopeInScope3);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, scopeInScope4) {
  std::thread t(tests::returnFromFrame::scopeInScope4);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, bpAfterFirstDestructor) {
  std::thread t(tests::returnFromFrame::bpAfterFirstDestructor);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, noOperationAfterConstructor) {
  std::thread t(tests::returnFromFrame::noOperationAfterConstructor);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, noDestructorInScope) {
  std::thread t(tests::returnFromFrame::noDestructorInScope);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, multipleDestructorsTests) {
  std::thread t(tests::returnFromFrame::multipleDestructorsTests);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, returnFromFunctionTest) {
  std::thread t(tests::returnFromFrame::returnFromFunctionTest);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, tempObjectsTest) {
  std::thread t(tests::returnFromFrame::tempObjectsTest);
  returnFromFrame(t, true, 2);
  returnFromFrame(t, true, 2);
  t.join();
}

TEST_F(ReturnFromFrameTests, noDestructorInScope2) {
  std::thread t(tests::returnFromFrame::noDestructorInScope2);
  returnFromFrame(t, true, 1);
  t.join();
}

TEST_F(ReturnFromFrameTests, leafFunctionTest) {
  std::thread t(tests::returnFromFrame::noDestructorInScope2);
  returnFromFrame(t, true, 2);
  t.join();
}

TEST_F(ReturnFromFrameTests, untilTwoFrames) {
  std::thread t(tests::returnFromFrame::untilTwoFrames, true);
  returnFromFrame(t, true, 2);
  t.join();
  ASSERT_TRUE(tests::returnFromFrame::g_frameTwoMet);
}
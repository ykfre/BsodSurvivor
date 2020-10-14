#include "gtest/gtest.h"

#include <Windows.h>
#include "TestsUtils.h"
#include "UserModePlatform.h"
#include "Crt.h"
#include "ExpressionTests.h"
#include "StlExprssionsTests.h"
#include "Commands.h"


class ExpressionTests : public testing::Test {
public:
  void SetUp() override { test::expression::g_counter = 0; }
    void executeExpression(std::thread& t, int selectedFrameIndex =0) {
    waitForBpNotification();
    SuspendThread(t.native_handle());
    executeCommand(t, [&](CommonCommandArgs &args) {
      t_platform = std::make_shared<UserModePlatform>(
          (void *)t.native_handle(),
          (void *)GetModuleHandleA(EXECUTABLE_TESTS_DLL.c_str()));
      args.selectedFrameIndex = selectedFrameIndex;
      return commands::executeExpression(args, g_expr);
    });
    ResumeThread(t.native_handle());
  }
};

TEST_F(ExpressionTests, LocalsSanity)
{
  std::thread t(test::expression::localVariableSanity);

  executeExpression(t);
  executeExpression(t);
  t.join();
}

TEST_F(ExpressionTests, GlobalsSanity) {
  std::thread t(test::expression::globalVariableSanity);
  executeExpression(t);
  t.join();
}

TEST_F(ExpressionTests, InlineFunctionTest) {
  std::thread t(test::expression::inlineFunctionTest);
  executeExpression(t);
  t.join();
}

TEST_F(ExpressionTests, inlineInClassTest) {
  std::thread t(test::expression::inlineInClassTest);
  executeExpression(t);
  t.join();
}
TEST_F(ExpressionTests, LambdaTest) {
  std::thread t(test::expression::lambdaSanity);
  executeExpression(t);
  executeExpression(t);
  executeExpression(t);
  executeExpression(t);
  
  t.join();
}

TEST_F(ExpressionTests, ClassSanity) {
  std::thread t(test::expression::classTestSanity);
  executeExpression(t);
  t.join();
}

class StlExpressionTests :public ExpressionTests{};
TEST_F(StlExpressionTests, optionalObjectTest) {
  std::thread t(test::expression::optionalObjectTest);
  executeExpression(t);
  executeExpression(t);
  t.join();
}

TEST_F(StlExpressionTests, uniquePtrTest) {
  std::thread t(test::expression::uniquePtrTest);
  executeExpression(t);
  executeExpression(t);
  t.join();
}


TEST_F(StlExpressionTests, sharedMemoryTest) {
  std::thread t(test::expression::sharedMemoryTest);
  executeExpression(t);
  executeExpression(t);
  t.join();
}

TEST_F(ExpressionTests, windowsApiTest) {
  std::thread t(test::expression::windowsApiTest);
  executeExpression(t);
  t.join();
}


TEST_F(StlExpressionTests, expectedTest) {
  std::thread t(test::expression::expectedTest);
  executeExpression(t);
  executeExpression(t);
  t.join();
}

TEST_F(ExpressionTests, SelectFrame1) {
  std::thread t(test::expression::selectFrame1Test);
  int selectedFrameIndex = 1;
  executeExpression(t, selectedFrameIndex);
  t.join();
}


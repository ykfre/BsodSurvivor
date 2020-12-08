#include "gtest/gtest.h"
#include "Config.h"
#include "Platform.h"
#include <Windows.h>
#include "TestsUtils.h"
#include "UserModePlatform.h"
#include "Logger.h"
#include "Crt.h"
#include "ExpressionTests.h"
#include "StlExprssionsTests.h"
#include "Commands.h"


class ExpressionTests : public TestUtils {
public:
  void SetUp() override {
    test::expression::g_counter = 0;
    TestUtils::SetUp();
  }
    void executeExpression(std::thread& t, int selectedFrameIndex =0) {
    waitForBpNotification();
    SuspendThread(t.native_handle());
    executeCommand(t, [&](CommonCommandArgs &args) {
      g_platform->setCurrentThread(
          g_threadFactory->create(GetThreadId(t.native_handle())));
      t_logger = std::make_shared<ConsoleLogger>();

      args.selectedFrameIndex = selectedFrameIndex;
      auto expr = g_expr;
      return commands::executeExpression(args, expr);
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

TEST_F(ExpressionTests, allStl) {
  std::thread t(test::expression::allStl);
  executeExpression(t);
  t.join();
}

TEST_F(StlExpressionTests, mixStlWithDwarfData) {
  std::thread t(test::expression::mixStlWithDwarfData);
  executeExpression(t);
  t.join();
}

TEST_F(ExpressionTests, SelectFrame1) {
  std::thread t(test::expression::selectFrame1Test);
  int selectedFrameIndex = 1;
  executeExpression(t, selectedFrameIndex);
  t.join();
}


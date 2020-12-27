#pragma once
#include <Windows.h>
#include <string>
#include <thread>
#include <functional>
#include <gtest/gtest.h>
#include "CommonCommandArgs.h"

class TestUtils : public testing::Test {
public:
  void SetUp() override;

  void executeExpression(std::thread &t, int selectedFrameIndex = 0);
};

void executeCommand(
    std::thread &thread,
    const std::function<bool(CommonCommandArgs &args)> &command);

void waitForBpNotification();

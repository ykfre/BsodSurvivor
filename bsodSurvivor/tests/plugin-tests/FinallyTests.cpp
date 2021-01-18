#include "FinallyTests.h"
#include "gtest/gtest.h"
class FinallyTests : public testing::Test {};

TEST_F(FinallyTests, exceptTest) { exceptTest(); }

TEST_F(FinallyTests, finallyTest) { finallyTest(); }
#include "Platform.h"
#include "Config.h"
#include "FunctionRunManager.h"
#include "TestsUtils.h"
#include "gtest/gtest.h"

class ConfigurationTests : public testing::Test {};
std::string JSON_DATA = "{"
                        "\"executablePath\" : \"a.exe\","
                        " \"executableModuleName\" : \"module\","
                        " \"callDestructorsFunctionName\" : \"callDestructorsFunctionName\","
                        " \"breakFunctionName\" : \"breakFunctionName\","
                        "\"allocateSpaceInStackFunctionName\" : " "\"allocateSpaceInStackFunctionName\","
                        "\"modulesNames\" : [ \"a\", \"b\" ]"
                        "}";

std::string BAD_JSON_DATA = "{"
                        "\"executablenassndmnmdnPath\" : \"a.exe\""
                        "}";

TEST_F(ConfigurationTests, sanity) {
  Config config;
  auto res = config.loadFromString(JSON_DATA);
  ASSERT_TRUE(res);
  ASSERT_EQ(config.executablePath, "a.exe");
  ASSERT_EQ(config.breakFunctionName, "breakFunctionName");
  ASSERT_EQ(config.executableModuleName, "module");
  ASSERT_EQ(config.allocateSpaceInStackFunctionName,
            "allocateSpaceInStackFunctionName");
  auto expectedModulesNames = std::vector<std::string>{"a", "b"};
  ASSERT_EQ(config.modulesNames, expectedModulesNames);
}

TEST_F(ConfigurationTests, NotExistingFile) {
  Config config;
  auto res = config.load("path not exists");
  ASSERT_FALSE(res);
}

TEST_F(ConfigurationTests, BadData) {
  Config config;
  auto res = config.loadFromString(BAD_JSON_DATA);
  ASSERT_FALSE(res);
}
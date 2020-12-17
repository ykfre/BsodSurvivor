#include "blink/blink.h"
#include "Config.h"
#include "TestsUtils.h"
#include "blink/LoadDllFromMemory.h"
#include "utils.h"
#include "gtest/gtest.h"
#include <Windows.h>
#include <iostream>
#include <string>
const std::string FIRST_CPP_2 =
    R"(
#include <Windows.h>
#include <string>
namespace blink{
extern int g;

int g_unconstGlobal = 200;
const int g_constGlboal = 9;
__declspec(dllimport) extern "C"  int externalFunc();
extern int second_obj_func();
extern void n();
int m()
{
  n();
  auto c = std::string("ms");
  auto d = c.empty();
	const char* b = "8786";
	int a = strlen(b);
	return a + g + 1 + second_obj_func()+externalFunc()+ g_unconstGlobal +g_constGlboal;
}

int ll()
{
return 5;
}

extern "C" int functionToSeeChangeIOldObj2()
{
	return ll();
}

extern "C" int functionToSeeChangeInNewObj()
{
	return m();
}})";

const std::string FIRST_CPP_3 =
    R"(
namespace blink{

extern int g_unconstGlobal;
const int g_constGlboal =1;
int m()
{
return 7;
}
int ll()
{
return 6 +  g_unconstGlobal + g_constGlboal;
}
})";

const std::string DONT_SUCCESSFULLY_LINK_CPP =
    R"(
int rs();
int ll()
{
return rs();
}
)";

const std::string BAD_COMPILATION_CPP =
    R"(
int ll()
{
return ;
}
)";
class BlinkTests : public TestUtils {
public:
  void SetUp() override {
    g_blink = Blink();
    TestUtils::SetUp();
  }

  void TearDown() override {
    for (auto &module : g_blink.getDynamicDlls()) {
      module->setShouldRelease(false);
    }
  }

  LinkCommand::LinkCommandRequest getLinkCommandRequest() {
    LinkCommand::LinkCommandRequest request;
    request.set_clangfilepath(
        R"(C:\temp2\llvm-project\temp\RelWithDebInfo\bin\clang-cl.exe)");
    request.set_objcopypath(R"(C:\Program Files\LLVM\bin\llvm-objcopy.exe)");
    request.set_ldpath(R"(C:\code\llvm-project\temp\Release\bin\lld-link.exe)");
    std::string cppFilePath = g_blink.getUniqueTempFilePath("a.cpp");
    request.set_filepath(cppFilePath);
    request.set_masmpath(
        R"(ml64.exe)");
    request.set_linkerflags("");
    return request;
  }
};

TEST_F(BlinkTests, moduleDoesNotExist) {
  g_config.modulesNames.push_back("some not found module");
  auto result = g_blink.initDllsIfNeeded();
  ASSERT_FALSE(result.m_success);
}

TEST_F(BlinkTests, didNotSucceedToFindSymbol) {
  auto oldDynamic = g_blink.getDynamicDlls();
  auto request = getLinkCommandRequest();
  writeToFile(request.filepath(),
              std::vector<char>{DONT_SUCCESSFULLY_LINK_CPP.begin(),
                                DONT_SUCCESSFULLY_LINK_CPP.end()});
  auto result = g_blink.link(&request);
  ASSERT_FALSE(result.m_success);
  ASSERT_EQ(oldDynamic, g_blink.getDynamicDlls());
}

TEST_F(BlinkTests, BAD_COMPILATION_CPP) {
  auto oldDynamic = g_blink.getDynamicDlls();
  auto request = getLinkCommandRequest();
  writeToFile(request.filepath(), std::vector<char>{BAD_COMPILATION_CPP.begin(),
                                                    BAD_COMPILATION_CPP.end()});
  auto result = g_blink.link(&request);
  ASSERT_FALSE(result.m_success);
  ASSERT_EQ(oldDynamic, g_blink.getDynamicDlls());
}


TEST_F(BlinkTests, sanity) {
  auto request = getLinkCommandRequest();
  writeToFile(request.filepath(),
              std::vector<char>{FIRST_CPP_2.begin(), FIRST_CPP_2.end()});
  ASSERT_TRUE(g_blink.link(&request).m_success);

  auto functionToSeeChangeInNewObj =
      (int (*)())g_blink.getDynamicDlls().at(0)->getSymbols().at("functionToSeeChangeInNewObj")
                                         .m_address;
  auto res = functionToSeeChangeInNewObj();
  if (res != 34) {
    throw std::exception("1");
  }

  auto functionToSeeChangeInOldObj =
      (int (*)())g_blink.getDllToChange()->getSymbols().at("functionToSeeChangeInNewObj")
                                         .m_address;
  res = functionToSeeChangeInOldObj();
  if (res != 34) {
    throw std::exception("1");
  }

  writeToFile(request.filepath(),
              std::vector<char>{FIRST_CPP_3.begin(), FIRST_CPP_3.end()});
  ASSERT_TRUE(g_blink.link(&request).m_success);

  auto functionToSeeChangeInOldObj2 =
      (int (*)())g_blink.getDynamicDlls().at(0)->getSymbols().at(
          "functionToSeeChangeIOldObj2").m_address;
  res = functionToSeeChangeInOldObj2();
  if (res != 8) {
    throw std::exception("1");
  }

  functionToSeeChangeInOldObj =
      (int (*)())g_blink.getDllToChange()->getSymbols().at(
          "functionToSeeChangeInNewObj").m_address;
  res = functionToSeeChangeInOldObj();
  if (res != 7) {
    throw std::exception("1");
  }
}


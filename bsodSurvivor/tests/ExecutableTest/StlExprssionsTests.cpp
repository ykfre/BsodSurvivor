#include "stdafx.h"

#include "AssertUtils.h"
#include "StlExprssionsTests.h"

#include "Crt.h"
#include "ExpressionTests.h"

std::unique_ptr<ClassWithDestructor> retFunc() {
  return std::unique_ptr<ClassWithDestructor>();
}
namespace test {
namespace expression {

int g_counter = 0;

std::optional<int> returnOptional() { return std::optional<int>(6); }
API void optionalObjectTest() {
  std::optional<int> a = returnOptional();
  a = 5;
  a.value();

  std::string expr = "a=5;"
                     "std::optional<int> m = a;"
                     "FAIL_TEST_IF_FALSE(m.value()==5); "
                     "a=a.value()+1;"
                     "if(!a)"
                     "{FAIL_TEST_IF_FALSE(false);}"
                     "FAIL_TEST_IF_FALSE(!"
                     "std::optional<int>());"
                     "FAIL_TEST_IF_FALSE(a==a);"
                     "a = 5;"
                     "a = returnOptional();";
  RUN_EXPR(expr);
  failTestIfFalse(a == returnOptional());
  std::string expr2 = "std::optional<ClassWithDestructor> m;"
                      "m=ClassWithDestructor(1); "
                      "m =m;";
  RUN_EXPR(expr2);
  failTestIfFalse(g_counter != 0);
}

API void expectedTest() {
  tl::expected<int, int> fs;
  tl::expected<int, int> a;
  std::string expr = "a=5;"
                     "FAIL_TEST_IF_FALSE(a.value()==5);"
                     "FAIL_TEST_IF_FALSE(a.has_value());"
                     "FAIL_TEST_IF_FALSE(a==a);"
                     "FAIL_TEST_IF_FALSE(a);"
                     "FAIL_TEST_IF_FALSE(!!a);"
                     "fs.value() = 6;"
                     "FAIL_TEST_IF_FALSE(6 == fs.value_or(3));"
                     "a = fs;"
                     "FAIL_TEST_IF_FALSE(a.value() == 6);"
                     "a = tl::make_unexpected(2);"
                     "FAIL_TEST_IF_FALSE(!a.has_value());"
                     "FAIL_TEST_IF_FALSE(2 == a.error());"
                     "FAIL_TEST_IF_FALSE(3 == a.value_or(3));";
  RUN_EXPR(expr);
  failTestIfFalse(a.error() == 2);
  ClassWithDestructor s(1);
  ClassWithDestructor n = s;
  s = s;
  s == s;
  std::string expr2 = "std::expected<ClassWithDestructor, int> m(1);"
                      "m=ClassWithDestructor(1); "
                      "m =m;"
                      "FAIL_TEST_IF_FALSE(m == m);";
  RUN_EXPR(expr2);
  failTestIfFalse(g_counter != 0);
}

std::shared_ptr<int> returnShared() { return std::make_shared<int>(44); }
API void sharedMemoryTest() {

  returnShared();
  
  std::string expr2 =
      "std::shared_ptr<ClassWithDestructor>ms(new ClassWithDestructor(2));"
      "FAIL_TEST_IF_FALSE(2==ms->m_r);"
      "ms =ms;"
      "ms.get()->m_r = ms.get()->m_r;"
      "*ms = *ms";
  "ms.reset();"
  "FAIL_TEST_IF_FALSE(nullptr == ms);"
  "ms = returnShared();";
  RUN_EXPR(expr2);
  failTestIfFalse(g_counter != 0);
  

  printf("%d", 5);
  std::shared_ptr<int> a;
  {
      auto fs = a;
    bool b = fs == fs;
  }
  std::string expr = ""
                     "a.reset();"
                     "auto f = a;"
                     "FAIL_TEST_IF_FALSE(a==f);"
                     "FAIL_TEST_IF_FALSE(nullptr == a);"
                     "FAIL_TEST_IF_FALSE(nullptr == a.get());"
                     "a.reset(new int(5));"
                     "FAIL_TEST_IF_FALSE((bool)a);"
                     "FAIL_TEST_IF_FALSE(*a == 5);;"
                     "printf(\"value is %d\\n\", a.use_count());"
                     "printf(\"value is %d\\n\", *a);"
                     "printf(\"value is %p\\n\", a.get())";
  "a.reset(new int(5));";
  RUN_EXPR(expr);
  auto d = a.use_count();
  failTestIfFalse(*a == 5);
}

API void uniquePtrTest() {
  std::unique_ptr<int> a;
  const std::unique_ptr<int> d;
  std::string expr = ""
                     "a.reset();"
                     "std::unique_ptr<int> f;"
                     "f.reset(new int(5));"
                     "a.reset(new int(5))"
                     "FAIL_TEST_IF_FALSE(*f == 5);"
                     "FAIL_TEST_IF_FALSE(f.get() != nullptr);"
                     "FAIL_TEST_IF_FALSE(a.get() != nullptr);";
  ;
  RUN_EXPR(expr);
  failTestIfFalse(*a == 5);
  retFunc();
  g_counter = 0;
  std::string expr2 =
      "auto aa = ClassWithDestructor(2);"
      "std::unique_ptr<ClassWithDestructor> ms(new ClassWithDestructor(2));"
      "FAIL_TEST_IF_FALSE(2==ms->m_r);"
      "*ms = *ms;"
      "ms.get()->m_r = ms.get()->m_r;"
      " ms = std::make_unique<ClassWithDestructor>(2);"
      " ms = retFunc();"
      "ms.reset();";
  RUN_EXPR(expr2);
  failTestIfFalse(g_counter != 0);
}

API void windowsApiTest() {
  STARTUPINFOW s = {};
  s = s;
  CONTEXT context = {};
  context = context;
  PROCESS_INFORMATION p;
  p = p;
  std::string expr = ""

                     ""
                     ""
                     "PROCESS_INFORMATION w = {};\n"
                     "s.cb = sizeof(s);\n"
                     "p.hThread = GetCurrentThread();"
                     "RtlCaptureContext(&context);"
                     ""
                     "context.R10 = 8;"
                     "FAIL_TEST_IF_FALSE(GetModuleHandle(nullptr)); ";

  RUN_EXPR(expr);
  failTestIfFalse(context.R10 == 8);
  failTestIfFalse(p.hThread == GetCurrentThread());
}


struct MyStruct {
  int a;
};

API void mixStlWithDwarfData() {
  MyStruct str;
  str.a = str.a;
  std::string expr2 =
      "test::expression::MyStruct s;"
      ""
      "auto f = std::make_shared<test::expression::MyStruct>();"
      "f = f;"
      "";
  RUN_EXPR(expr2);
}

API void allStl() {
  MyStruct str;
  str.a = str.a;
  std::string expr2 = "std::shared_ptr<int> f;"
                      "std::optional<int> m;"
                      "tl::make_unexpected(2);;"
                      "std::unique_ptr<int> sk;"
                      "";
  RUN_EXPR(expr2);
}

} // namespace expression
} // namespace test


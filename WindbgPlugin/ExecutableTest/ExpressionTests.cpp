#include "stdafx.h"

#include "ExpressionTests.h"
#include "AssertUtils.h"
#include "Crt.h"
#include "ExportsDefines.h"
#include "StlExprssionsTests.h"

/// Needs to explain it.
namespace m {
int rr = 0;
}

namespace test {
namespace expression {



class M {
public:
  void f() {
    incCounter();
    m_counter = 0;
    RUN_EXPR("incCounter();");
    failTestIfFalse(m_counter == 1);
  }

private:
  void incCounter() { m_counter++; }
  int m_counter = 0;
};

API void localVariableSanity() {
  int var = 4;
  RUN_EXPR("var++");
  failTestIfFalse(var == 5);

  RUN_EXPR("var++");
  failTestIfFalse(var == 6);
}

API void inlineInClassTest() {
  RUN_EXPR("InlineClass a; test::expression::g_counter = a.inlineFunc();")
  failTestIfFalse(test::expression::g_counter == 5);
}

API void globalVariableSanity() {
  test::expression::g_counter = 0;
  RUN_EXPR("test::expression::g_counter++");
  failTestIfFalse(test::expression::g_counter == 1);
}

API void lambdaSanity() {
  auto var1 = 2;
  auto a = [&]() {
    int var = 4;
    
    RUN_EXPR("var*=2;");
    failTestIfFalse(var == 8);
    RUN_EXPR("var=var1;");
    failTestIfFalse(var == 2);
    RUN_EXPR("var1 = 1;");
    failTestIfFalse(var1 == 1);

    return var1;
  };
  auto var = a();
  failTestIfFalse(var == 1);
  RUN_EXPR("var++;");
  failTestIfFalse(var == 2);
}

API void classTestSanity() {
  M m;
  m.f();
}

API void inlineFunctionTest() {
  int a = 0;
  RUN_EXPR("a = ::m::inlineFunc();");
  failTestIfFalse(a == 5);
}

void innerFunc() { RUN_EXPR("a++;"); }

API void selectFrame1Test() {
  int a = 4;
  innerFunc();
  failTestIfFalse(a == 5);
}

} // namespace expression
} // namespace test
#include "ForExpressions.h"
#include "AssertUtils.h"
#include "Crt.h"
namespace blinkExpr {
class M {
public:
  static void anotherAlreadExistFunction() {}
  static int functionToChange1() { return 0; }
};
void func() {}
} // namespace blinkExpr
namespace blinkExpr {

API void test_blink_expr() {
  blinkExpr::M::anotherAlreadExistFunction();
  failTestIfFalse(0 == blinkExpr::M::functionToChange1());
  int result1 = 0;
  RUN_EXPR("result1 = blinkExpr::M::functionToChange1();"
           "blinkExpr::M::anotherAlreadExistFunction();"
           "blinkExpr::f();blinkExpr::functionInNewModule1();");
  failTestIfFalse(result1 == 2);
  result1 = 0;
  RUN_EXPR("result1 = blinkExpr::M::functionToChange1();");
  failTestIfFalse(result1 == 3);
}
} // namespace blinkExpr

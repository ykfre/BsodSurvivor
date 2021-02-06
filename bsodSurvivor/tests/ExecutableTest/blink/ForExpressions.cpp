#include "ForExpressions.h"
#include "AssertUtils.h"
#include "Crt.h"
namespace blinkExpr {
class M {
public:
  static void anotherAlreadExistFunction() {}
  static int functionToChange1() { return 0; }

};
int globalValue = 3;
void func() {}
} // namespace blinkExpr
namespace blinkExpr {

API void test_blink_expr() {
  blinkExpr::M::anotherAlreadExistFunction();
  failTestIfFalse(0 == blinkExpr::M::functionToChange1());
  int result1 = 0;
  int result3 = 0;
  RUN_EXPR("result1 = blinkExpr::M::functionToChange1();"
           "blinkExpr::M::anotherAlreadExistFunction();"
           "result3 = blinkExpr::globalValue;");
  failTestIfFalse(result1 == 2);
  failTestIfFalse(result3 == 3);
  result1 = 0;
  RUN_EXPR("result1 = blinkExpr::M::functionToChange1();");
  failTestIfFalse(result1 == 3);
}
} // namespace blinkExpr

#include <Windows.h>
#include <string>
__declspec(dllimport) extern "C" int externalFunc2();

namespace blink
{
extern int g;
int g_unconstGlobal = 1;
const int g_constGlboal = 2;
int m() {
  auto c = std::string("ms");
  auto d = c.empty();
  externalFunc2();
  const char *b = "876";
  int a = strlen(b);
  return a + g + g_unconstGlobal + g_constGlboal;
}

void n() {
  auto c = std::string("ms");
  auto d = c.empty();
  d = d;
}

extern "C" int functionToSeeChangeInNewObj() { return m(); }
}

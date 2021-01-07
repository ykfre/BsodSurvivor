#include "ReturnFromFrameTests.h"
#include "AssertUtils.h"
#include "Crt.h"
#include <memory>

namespace tests {
namespace returnFromFrame {

API int g_counter = 0;
API bool g_frameTwoMet = false;

class M {
public:
  ~M() { g_counter += a; }
  void callBp() const { BP(); }
  std::shared_ptr<M> returnSelfPtr() const {
    return std::shared_ptr<M>(new M{a + 1});
  }
  int a;
};

#define THROW() throw std::exception();
API void sanity(bool shouldCallDestructor) {
  auto a = []() {
    M m;
    m.a = 2;
    {
      M s;
      s.a = 1;
    }
    int a = 4;
    a += 3;
    a += 2;
    BP();
    M r;
    failTestIfFalse(false);
  };
  a();

  g_frameTwoMet = true;
  if (shouldCallDestructor) {
    failTestIfFalse(g_counter == 3);
  } else {
    failTestIfFalse(g_counter == 1);
  }
}

void throwMaybe() { auto a = new int(5); }

API void noDestructorsToCallTest() {
  auto a = []() {
    {
      M m;
      m.a = 5;
      throwMaybe();
      throwMaybe();
    }
    BP();
    M m;
    m.a = 4;
    THROW();
  };
  a();
  failTestIfFalse(g_counter == 5);
}

std::shared_ptr<M> f() {
  auto result = std::make_shared<M>();
  result->a = 5;
  return result;
}

API void tempObjectsTest() {
  auto a = []() { f()->callBp(); };
  a();
  failTestIfFalse(g_counter == 5);
  g_counter = 0;
  auto b = []() { f()->returnSelfPtr()->callBp(); };
  b();
  failTestIfFalse(g_counter == 11);
}

API void forLoopTest() {
  []() {
    M m{1};
    for (int i = 0; i < m.returnSelfPtr()->a; i++) {
      BP();
    }
  }();
  failTestIfFalse(g_counter == 3);
}

API void forLoopTest2() {
  []() {
    M m{1};
    for (int i = 0; i < m.returnSelfPtr()->a; i++) {
      int a = 4;
      a++;
    }
    BP();
  }();
  failTestIfFalse(g_counter == 7);
}

API void forLoopTest3() {
  []() {
    M m{1};
    for (int i = 0; i < m.returnSelfPtr()->a; i++) {
      M s{3};
      int a = 4;
      a += 1;
    }
    BP();
  }();
  failTestIfFalse(g_counter == 13);
}

API void scopeInScope() {
  []() {
    M m{1};
    {
      M r{4};
      {
        M n{3};
        BP();
      }
    }
  }();
  failTestIfFalse(g_counter == 8);
}

API void scopeInScope2() {
  []() {
    M m{1};
    {
      M r{4};
      { M n{3}; }
      BP();
    }
  }();
  failTestIfFalse(g_counter == 8);
}

API void scopeInScope3() {
  []() {
    M m{1};
    {
      BP();
      M r{4};
    }
  }();
  failTestIfFalse(g_counter == 1);
}

API void scopeInScope4() {
  []() {
    M m{1};
    {
      M r{4};
      BP();
      M j{3};
    }
  }();
  failTestIfFalse(g_counter == 5);
}

API void bpAfterFirstDestructor() {
  []() {
    M m{1};
    m.a = m.a;
    BP();
    M r{4};
  }();
  failTestIfFalse(g_counter == 1);
}

API void multipleDestructorsTests() {
  []() {
    M m;
    m.a = 5;
    M g;
    g.a = 6;
    BP();
  }();
  failTestIfFalse(g_counter == 11);
}

API void noOperationAfterConstructor() {
  auto a = []() {
    M m;
    m.a = 2;
    BP();
  };
  a();
  failTestIfFalse(g_counter == 2);
}

API void noDestructorInScope() {
  auto a = []() {
    M m;
    m.a = 2;
    {
      int a = 4;
      a += 1;
    }
    BP();
  };
  a();
  failTestIfFalse(g_counter == 2);
}

API void noDestructorInScope2() {
  auto a = []() {
    M m;
    m.a = 2;
    {
      int a = 4;
      a += 1;
      BP();
    }
  };
  a();
  failTestIfFalse(g_counter == 2);
}

void leaf() { BP(); }

void func2(bool shouldCallDestructor) {
  M m;
  m.a = 9;
  leaf();
  failTestIfFalse(false);
}

API void untilTwoFrames(bool shouldCallDestructor) {
  std::string a = "56";
  func2(shouldCallDestructor);
  failTestIfFalse(a == "56");
  failTestIfFalse(g_counter == 9);
  g_frameTwoMet = true;
}

API void returnFromFunctionTest() {
  auto f = []() {
    M m{4};
    m.a = 2;
    BP();
    return m;
  }();
  failTestIfFalse(g_counter == 2);
}

API void leafFunctionTest(bool shouldCallDestructor) {
  int a = 8;
  []() {
    M m;
    m.a = 5;
    leaf();
  }();
  failTestIfFalse(a == 8);
  failTestIfFalse(g_counter == 5);
}

} // namespace returnFromFrame
} // namespace tests

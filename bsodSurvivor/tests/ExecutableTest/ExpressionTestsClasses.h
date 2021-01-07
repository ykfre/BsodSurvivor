#pragma once
#include <memory>
class InlineClass {
  inline int inlineFunc() { return 5; }
};

namespace m {
	//don't use this function anywhere - it is needed not to be used.
inline int inlineFunc() { return 5; }
}


class ClassWithDestructor {
public:
  ClassWithDestructor() {}
  ClassWithDestructor(int r);
  ClassWithDestructor(const ClassWithDestructor &other);
  ClassWithDestructor &operator=(const ClassWithDestructor &other);
  bool operator==(const ClassWithDestructor &other)const ;
  bool operator!=(const ClassWithDestructor &other)const;
  ~ClassWithDestructor();
  int m_r;
};


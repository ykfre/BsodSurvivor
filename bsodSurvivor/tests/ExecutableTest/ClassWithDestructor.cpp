#include "stdafx.h"
#include "ExpressionTestsClasses.h"
#include "StlExprssionsTests.h"

ClassWithDestructor::ClassWithDestructor(int r) { m_r = r; }

ClassWithDestructor::ClassWithDestructor(const ClassWithDestructor &other) {
  m_r = other.m_r;
}

bool ClassWithDestructor::operator==(const ClassWithDestructor &other) const {
  return m_r == other.m_r;
};

bool ClassWithDestructor::operator!=(const ClassWithDestructor &other) const {
  return !(*this == other);
};

ClassWithDestructor &
ClassWithDestructor::operator=(const ClassWithDestructor &other) {
  m_r = other.m_r;
  return *this;
}

ClassWithDestructor::~ClassWithDestructor() {
  test::expression::g_counter += m_r;
}
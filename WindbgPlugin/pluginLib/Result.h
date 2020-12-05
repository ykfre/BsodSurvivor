#pragma once
#include <string>
class [[nodiscard]] Result {
public:
  Result(std::string err);
  Result();

  bool m_success=true;
  std::string m_err="";
};

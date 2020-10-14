#pragma once
#include <vector>
#include <string>
#include "llvm/ADT/Optional.h"

struct Module {

  std::vector<char> read();
  std::string moduleName;
  size_t startAddr;
  size_t size;

private:
  void read(std::vector<char> &pe,
            size_t offset, size_t howMuchToRead,
            llvm::Optional<size_t> whereTo = llvm::NoneType());
};

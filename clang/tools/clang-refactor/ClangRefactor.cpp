// Declares clang::SyntaxOnlyAction.
#include "clang/ASTMatchers/ASTMatchers.h"
#include "clang/Frontend/FrontendActions.h"
#include "clang/Tooling/CommonOptionsParser.h"
#include "clang/Tooling/Tooling.h"
// Declares llvm::cl::extrahelp.
#include "llvm/Support/CommandLine.h"

#include "clang/ASTMatchers/ASTMatchFinder.h"
#include "clang/ASTMatchers/ASTMatchers.h"

#include <cstdio>
#include <fstream>
#include <iostream>
using namespace clang;
using namespace clang::ast_matchers;
using namespace clang::tooling;
using namespace llvm;

DeclarationMatcher classesMatcher = cxxRecordDecl().bind("class");

class MethodPrinter : public MatchFinder::MatchCallback {
public:
  MethodPrinter(std::ofstream &f) : m_f(f) {}
  virtual void run(const MatchFinder::MatchResult &Result) {
    if (const auto classObject =
            Result.Nodes.getNodeAs<clang::CXXRecordDecl>("class")) {
      if (classObject->getName() == "LangOptionsBase" ||
          classObject->getName() == "LangOptions") {
        for (auto fieldIter = classObject->field_begin();
             fieldIter != classObject->field_end(); fieldIter++) {
          auto access = fieldIter->getAccess();
          if (access != AS_public) {
            continue;
          }
          m_f << "serialize(langOptions." << fieldIter->getNameAsString()
              << ");" << std::endl;
        }
      }
    }
  }

private:
  std::ofstream &m_f;
};

// CommonOptionsParser declares HelpMessage with a description of the common
// command-line options related to the compilation database and input files.
// It's nice to have this help message in all tools.
static cl::extrahelp CommonHelp(CommonOptionsParser::HelpMessage);

// A help message for this specific tool can be added afterwards.
static cl::extrahelp MoreHelp("\nMore help text...");

int main(int argc, const char **argv) {
  cl::OptionCategory cat("myname", "mydescription");
  CommonOptionsParser optionsParser(argc, argv, cat, 0);

  ClangTool tool(optionsParser.getCompilations(),
                 optionsParser.getSourcePathList());
  std::ofstream f("me.txt");
  MethodPrinter printer(f);
  MatchFinder finder;
  finder.addMatcher(classesMatcher, &printer);
  return tool.run(newFrontendActionFactory(&finder).get());
}
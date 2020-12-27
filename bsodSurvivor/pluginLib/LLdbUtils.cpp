#include "LLdbUtils.h"

llvm::Optional<lldb::ModuleSP>
getContainingModule(lldb_private::ExecutionContext &executionContext,
                    size_t pc) {
  auto modules = executionContext.GetTargetPtr()->GetImages();
  for (int i = 0; i < modules.GetSize(); i++) {

    auto module = modules.GetModuleAtIndex(i);
    auto objFile = module->GetObjectFile();
    auto sections = *objFile->GetSectionList();
    std::vector<lldb::SectionSP> sectionsList;
    for (const auto &section : sections) {
      sectionsList.push_back(section);
    }

    auto baseStartAddr = objFile->GetBaseAddress().GetLoadAddress(
        executionContext.GetTargetPtr());
    if (baseStartAddr == -1) {
      continue;
    }
    auto lastSection = sectionsList[sectionsList.size() - 1];
    auto lastSectionAddr =
        lastSection->GetLoadBaseAddress(executionContext.GetTargetPtr());
    auto lastSectionSize = lastSection->GetBitSize();
    if (baseStartAddr <= pc && pc < lastSectionSize + lastSectionAddr) {
      return module;
    }
  }
  return llvm::NoneType();
}

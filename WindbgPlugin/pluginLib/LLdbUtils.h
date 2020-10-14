#pragma once

#include "lldb/Core/Module.h"
#include "lldb/Target/Target.h"
#include "lldb/Core/Section.h"

#include "lldb/Target/ExecutionContext.h"
#include "llvm/ADT/Optional.h"


llvm::Optional<lldb::ModuleSP>
getContainingModule(lldb_private::ExecutionContext &executionContext,
                    size_t pc);

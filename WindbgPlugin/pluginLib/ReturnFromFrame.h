#pragma once
#include "CommonCommandArgs.h"
#include "lldb/Target/Thread.h"

lldb_private::Status
returnFromCurrentFrame(lldb_private::Thread &thread,
                       lldb_private::ExecutionContext &executionContext,
                       bool shouldRunDestructors, size_t frameNumsToReturn);

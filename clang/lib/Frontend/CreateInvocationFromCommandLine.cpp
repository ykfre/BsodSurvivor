//===--- CreateInvocationFromCommandLine.cpp - CompilerInvocation from Args ==//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// Construct a compiler invocation object for command line driver arguments
//
//===----------------------------------------------------------------------===//

#include "clang/Frontend/Utils.h"
#include "clang/Basic/DiagnosticOptions.h"
#include "clang/Driver/Compilation.h"
#include "clang/Driver/Driver.h"
#include "clang/Driver/Action.h"
#include "clang/Driver/Options.h"
#include "clang/Driver/Tool.h"
#include "clang/Frontend/Utils.h"
#include "clang/Lex/PreprocessorOptions.h"
#include "clang/Lex/HeaderSearchOptions.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Frontend/FrontendDiagnostic.h"
#include "llvm/Option/ArgList.h"
#include "llvm/Support/Host.h"
#include "llvm/Support/Path.h"
#include <fstream>
#include <iostream>
#include <windows.h>
#include <filesystem>
using namespace clang;
using namespace llvm::opt;

bool g_is_lldb_execution = false;

std::vector<char> g_serailizeCompilerInvocation;

void serialize(void *obj, size_t sizeofObj) {
  std::vector<char> buff(sizeofObj);
  memcpy(buff.data(), obj, sizeofObj);
  g_serailizeCompilerInvocation.insert(g_serailizeCompilerInvocation.end(),
                                       buff.begin(), buff.end());
}

template <typename T, std::enable_if_t<std::is_integral<T>::value, int> = 0>
void serialize(T obj) {
  serialize((void *)&obj, sizeof(obj));
}

void serialize(const std::string &obj) {
  std::vector<char> buff(obj.size() + 1);

  memcpy(buff.data(), obj.c_str(), obj.size() + 1);
  g_serailizeCompilerInvocation.insert(g_serailizeCompilerInvocation.end(),
                                       buff.begin(), buff.end());
}

void serialize(const HeaderSearchOptions::Entry &obj) {
  serialize((std::string)obj.Path);
  serialize(obj.IgnoreSysRoot);
  serialize(obj.IsFramework);
  serialize((unsigned int)obj.Group);
}

template <typename T> void serialize(const std::vector<T> &obj) {
  serialize(obj.size());
  for (const auto &item : obj) {
    serialize(item);
  }
}

template <typename T, typename Y> void serialize(const std::map<T, Y> &obj) {
  serialize(obj.size());
  for (auto const &x : obj) {
    serialize(x.first);
    serialize(x.second);
  }
}

void serialize(const std::vector<std::pair<std::string, bool>> &obj) {
  serialize(obj.size());
  for (const auto &item : obj) {
    serialize(item.first);
    serialize(item.second);
  }
}

void serialize(const HeaderSearchOptions::SystemHeaderPrefix &obj) {
  serialize(obj.Prefix);
  serialize(obj.IsSystemHeader);
}

void serialize(LangOptions &langOptions) {
  serialize(langOptions.C99);
  serialize(langOptions.C11);
  serialize(langOptions.C17);
  serialize(langOptions.C2x);
  serialize(langOptions.MSVCCompat);
  serialize(langOptions.MicrosoftExt);
  serialize(langOptions.AsmBlocks);
  serialize(langOptions.Borland);
  serialize(langOptions.CPlusPlus);
  serialize(langOptions.CPlusPlus11);
  serialize(langOptions.CPlusPlus14);
  serialize(langOptions.CPlusPlus17);
  serialize(langOptions.CPlusPlus20);
  serialize(langOptions.ObjC);
  serialize(langOptions.ObjCDefaultSynthProperties);
  serialize(langOptions.EncodeExtendedBlockSig);
  serialize(langOptions.ObjCInferRelatedResultType);
  serialize(langOptions.AppExt);
  serialize(langOptions.Trigraphs);
  serialize(langOptions.LineComment);
  serialize(langOptions.Bool);
  serialize(langOptions.Half);
  serialize(langOptions.WChar);
  serialize(langOptions.Char8);
  serialize(langOptions.DeclSpecKeyword);
  serialize(langOptions.DollarIdents);
  serialize(langOptions.AsmPreprocessor);
  serialize(langOptions.GNUMode);
  serialize(langOptions.GNUKeywords);
  serialize(langOptions.GNUCVersion);
  serialize(langOptions.ImplicitInt);
  serialize(langOptions.Digraphs);
  serialize(langOptions.HexFloats);
  serialize(langOptions.CXXOperatorNames);
  serialize(langOptions.AppleKext);
  serialize(langOptions.PascalStrings);
  serialize(langOptions.WritableStrings);
  serialize(langOptions.ConstStrings);
  serialize(langOptions.ConvergentFunctions);
  serialize(langOptions.AltiVec);
  serialize(langOptions.ZVector);
  serialize(langOptions.Exceptions);
  serialize(langOptions.ObjCExceptions);
  serialize(langOptions.CXXExceptions);
  serialize(langOptions.DWARFExceptions);
  serialize(langOptions.SjLjExceptions);
  serialize(langOptions.SEHExceptions);
  serialize(langOptions.WasmExceptions);
  serialize(langOptions.ExternCNoUnwind);
  serialize(langOptions.TraditionalCPP);
  serialize(langOptions.RTTI);
  serialize(langOptions.RTTIData);
  serialize(langOptions.MSBitfields);
  serialize(langOptions.Freestanding);
  serialize(langOptions.NoBuiltin);
  serialize(langOptions.NoMathBuiltin);
  serialize(langOptions.GNUAsm);
  serialize(langOptions.Coroutines);
  serialize(langOptions.DllExportInlines);
  serialize(langOptions.RelaxedTemplateTemplateArgs);
  serialize(langOptions.DoubleSquareBracketAttributes);
  serialize(langOptions.ThreadsafeStatics);
  serialize(langOptions.POSIXThreads);
  serialize(langOptions.Blocks);
  serialize(langOptions.EmitAllDecls);
  serialize(langOptions.MathErrno);
  serialize(langOptions.HeinousExtensions);
  serialize(langOptions.Modules);
  serialize(langOptions.ModulesTS);
  serialize(langOptions.CPlusPlusModules);
  serialize(langOptions.CompilingPCH);
  serialize(langOptions.BuildingPCHWithObjectFile);
  serialize(langOptions.CacheGeneratedPCH);
  serialize(langOptions.ModulesDeclUse);
  serialize(langOptions.ModulesSearchAll);
  serialize(langOptions.ModulesStrictDeclUse);
  serialize(langOptions.ModulesErrorRecovery);
  serialize(langOptions.ImplicitModules);
  serialize(langOptions.ModulesLocalVisibility);
  serialize(langOptions.Optimize);
  serialize(langOptions.OptimizeSize);
  serialize(langOptions.Static);
  serialize(langOptions.PackStruct);
  serialize(langOptions.MaxTypeAlign);
  serialize(langOptions.AlignDouble);
  serialize(langOptions.LongDoubleSize);
  serialize(langOptions.PPCIEEELongDouble);
  serialize(langOptions.PICLevel);
  serialize(langOptions.PIE);
  serialize(langOptions.ROPI);
  serialize(langOptions.RWPI);
  serialize(langOptions.GNUInline);
  serialize(langOptions.NoInlineDefine);
  serialize(langOptions.Deprecated);
  serialize(langOptions.FastMath);
  serialize(langOptions.FiniteMathOnly);
  serialize(langOptions.UnsafeFPMath);
  serialize(langOptions.ObjCGCBitmapPrint);
  serialize(langOptions.AccessControl);
  serialize(langOptions.CharIsSigned);
  serialize(langOptions.WCharSize);
  serialize(langOptions.WCharIsSigned);
  serialize(langOptions.ShortEnums);
  serialize(langOptions.OpenCL);
  serialize(langOptions.OpenCLVersion);
  serialize(langOptions.OpenCLCPlusPlus);
  serialize(langOptions.OpenCLCPlusPlusVersion);
  serialize(langOptions.NativeHalfType);
  serialize(langOptions.NativeHalfArgsAndReturns);
  serialize(langOptions.HalfArgsAndReturns);
  serialize(langOptions.CUDA);
  serialize(langOptions.HIP);
  serialize(langOptions.OpenMP);
  serialize(langOptions.OpenMPSimd);
  serialize(langOptions.OpenMPUseTLS);
  serialize(langOptions.OpenMPIsDevice);
  serialize(langOptions.OpenMPCUDAMode);
  serialize(langOptions.OpenMPIRBuilder);
  serialize(langOptions.OpenMPCUDAForceFullRuntime);
  serialize(langOptions.OpenMPCUDANumSMs);
  serialize(langOptions.OpenMPCUDABlocksPerSM);
  serialize(langOptions.OpenMPCUDAReductionBufNum);
  serialize(langOptions.OpenMPOptimisticCollapse);
  serialize(langOptions.RenderScript);
  serialize(langOptions.CUDAIsDevice);
  serialize(langOptions.CUDAAllowVariadicFunctions);
  serialize(langOptions.CUDAHostDeviceConstexpr);
  serialize(langOptions.CUDADeviceApproxTranscendentals);
  serialize(langOptions.GPURelocatableDeviceCode);
  serialize(langOptions.GPUAllowDeviceInit);
  serialize(langOptions.GPUMaxThreadsPerBlock);
  serialize(langOptions.SYCLIsDevice);
  serialize(langOptions.HIPUseNewLaunchAPI);
  serialize(langOptions.SizedDeallocation);
  serialize(langOptions.AlignedAllocation);
  serialize(langOptions.AlignedAllocationUnavailable);
  serialize(langOptions.NewAlignOverride);
  serialize(langOptions.ConceptSatisfactionCaching);
  serialize(langOptions.ModulesCodegen);
  serialize(langOptions.ModulesDebugInfo);
  serialize(langOptions.ElideConstructors);
  serialize(langOptions.DumpRecordLayouts);
  serialize(langOptions.DumpRecordLayoutsSimple);
  serialize(langOptions.DumpVTableLayouts);
  serialize(langOptions.NoConstantCFStrings);
  serialize(langOptions.InlineVisibilityHidden);
  serialize(langOptions.GlobalAllocationFunctionVisibilityHidden);
  serialize(langOptions.ParseUnknownAnytype);
  serialize(langOptions.DebuggerSupport);
  serialize(langOptions.DebuggerCastResultToId);
  serialize(langOptions.DebuggerObjCLiteral);
  serialize(langOptions.SpellChecking);

  serialize(langOptions.SinglePrecisionConstants);
  serialize(langOptions.FastRelaxedMath);
  serialize(langOptions.NoBitFieldTypeAlign);
  serialize(langOptions.HexagonQdsp6Compat);
  serialize(langOptions.ObjCAutoRefCount);
  serialize(langOptions.ObjCWeakRuntime);
  serialize(langOptions.ObjCWeak);
  serialize(langOptions.ObjCSubscriptingLegacyRuntime);
  serialize(langOptions.CFProtectionBranch);
  serialize(langOptions.FakeAddressSpaceMap);
  serialize(langOptions.IncludeDefaultHeader);
  serialize(langOptions.DeclareOpenCLBuiltins);
  serialize(langOptions.DelayedTemplateParsing);
  serialize(langOptions.BlocksRuntimeOptional);
  serialize(langOptions.CompleteMemberPointers);
  serialize(langOptions.SetVisibilityForExternDecls);
  serialize(langOptions.ArrowDepth);
  serialize(langOptions.InstantiationDepth);
  serialize(langOptions.ConstexprCallDepth);
  serialize(langOptions.ConstexprStepLimit);

  serialize(langOptions.EnableNewConstInterp);
  serialize(langOptions.BracketDepth);
  serialize(langOptions.NumLargeByValueCopy);
  serialize(langOptions.MSCompatibilityVersion);
  serialize(langOptions.ApplePragmaPack);
  serialize(langOptions.RetainCommentsFromSystemHeaders);
  serialize(langOptions.SanitizeAddressFieldPadding);
  serialize(langOptions.Cmse);
  serialize(langOptions.XRayInstrument);
  serialize(langOptions.XRayAlwaysEmitCustomEvents);
  serialize(langOptions.XRayAlwaysEmitTypedEvents);
  serialize(langOptions.ForceEmitVTables);
  serialize(langOptions.AllowEditorPlaceholders);
  serialize(langOptions.FunctionAlignment);
  serialize(langOptions.FixedPoint);
  serialize(langOptions.PaddingOnUnsignedFixedPoint);
  serialize(langOptions.RegisterStaticDestructors);

  serialize(langOptions.SanitizerBlacklistFiles);
  serialize(langOptions.XRayAlwaysInstrumentFiles);
  serialize(langOptions.XRayNeverInstrumentFiles);
  serialize(langOptions.XRayAttrListFiles);
  serialize(langOptions.ObjCConstantStringClass);
  serialize(langOptions.OverflowHandler);
  serialize(langOptions.ModuleName);
  serialize(langOptions.CurrentModule);
  serialize(langOptions.ModuleFeatures);
  serialize(langOptions.NoBuiltinFuncs);
  serialize(langOptions.OMPHostIRFile);
  serialize(langOptions.IsHeaderFile);
}

void serialize(PreprocessorOptions &options) {
  serialize(options.Macros);
  serialize(options.Includes);
  serialize(options.MacroIncludes);
  serialize(options.UsePredefines);
  serialize(options.DetailedRecord);
  serialize(options.PCHWithHdrStop);
  serialize(options.PCHWithHdrStopCreate);
  serialize(options.PCHThroughHeader);
  serialize(options.ImplicitPCHInclude);
  serialize(options.ChainedIncludes);
  serialize(options.DisablePCHValidation);
  serialize(options.AllowPCHWithCompilerErrors);
  serialize(options.DumpDeserializedPCHDecls);
  serialize(options.GeneratePreamble);
  serialize(options.WriteCommentListToPCH);
  serialize(options.SingleFileParseMode);
  serialize(options.LexEditorPlaceholders);
  serialize(options.RemappedFilesKeepOriginalName);
  serialize(options.RetainRemappedFileBuffers);
  serialize(options.RetainExcludedConditionalBlocks);
  serialize((unsigned int)options.ObjCXXARCStandardLibrary);
  serialize(options.SetUpStaticAnalyzer);
  serialize(options.DisablePragmaDebugCrash);
}

void serialize(HeaderSearchOptions &options) {
  serialize(options.Sysroot);
  char workingDir[400] = {0};
  GetCurrentDirectoryA(400, workingDir);
  auto newEntry = options.UserEntries.at(0);
  newEntry.Path = workingDir;
  options.UserEntries.push_back(newEntry);
  serialize(options.UserEntries);
  serialize(options.SystemHeaderPrefixes);
  serialize(options.ResourceDir);
  serialize(options.ModuleCachePath);
  serialize(options.ModuleUserBuildPath);
  serialize(options.PrebuiltModulePaths);
  serialize(options.ModuleFormat);
  serialize(options.DisableModuleHash);

  serialize(options.ImplicitModuleMaps);
  serialize(options.ModuleMapFileHomeIsCwd);
  serialize(options.ModuleCachePruneInterval);
  serialize(options.ModuleCachePruneAfter);
  serialize(options.BuildSessionTimestamp);
  serialize(options.VFSOverlayFiles);
  serialize(options.UseBuiltinIncludes);

  serialize(options.UseStandardSystemIncludes);
  serialize(options.UseStandardCXXIncludes);
  serialize(options.UseLibcxx);
  serialize(options.Verbose);

  serialize(options.ModulesValidateOncePerBuildSession);
  serialize(options.ModulesValidateSystemHeaders);
  serialize(options.ValidateASTInputFilesContent);
  serialize(options.UseDebugInfo);
  serialize(options.ModulesValidateDiagnosticOptions);
  serialize(options.ModulesHashContent);
  serialize(options.ModulesStrictContextHash);
}

void serialize(CompilerInvocation &CI,
               SmallVector<FrontendInputFile, 0> inputs) {
  for (const auto &input : inputs) {

    llvm::SmallString<128> CurrDir;
    llvm::sys::fs::current_path(CurrDir);
    std::filesystem::path path(std::filesystem::path(CurrDir.str().str()));
    std::filesystem::path full_path = path / input.getFile().str();
    serialize(std::string(full_path.string()));
    auto serialized = g_serailizeCompilerInvocation;
    auto LangOpt = CI.getLangOpts();
    serialize(*LangOpt);
    serialize(*CI.PreprocessorOpts);
    serialize(CI.getHeaderSearchOpts());
    auto newSerialized = std::vector<char>(
        g_serailizeCompilerInvocation.begin() + serialized.size(),
        g_serailizeCompilerInvocation.end());
    g_serailizeCompilerInvocation = serialized;
    serialize((size_t)newSerialized.size());
    g_serailizeCompilerInvocation.insert(g_serailizeCompilerInvocation.end(),newSerialized.begin(), newSerialized.end());
  }

}

extern "C" std::vector<char> read_serialize() {
  return g_serailizeCompilerInvocation;
}

std::unique_ptr<CompilerInvocation> clang::createInvocationFromCommandLine(
    ArrayRef<const char *> ArgList, IntrusiveRefCntPtr<DiagnosticsEngine> Diags,
    IntrusiveRefCntPtr<llvm::vfs::FileSystem> VFS, bool ShouldRecoverOnErorrs,
    std::vector<std::string> *CC1Args) {
  if (!Diags.get()) {
    // No diagnostics engine was provided, so create our own diagnostics object
    // with the default options.
    Diags = CompilerInstance::createDiagnostics(new DiagnosticOptions);
  }

  SmallVector<const char *, 16> Args(ArgList.begin(), ArgList.end());

  // FIXME: Find a cleaner way to force the driver into restricted modes.
  Args.push_back("-fsyntax-only");

  // FIXME: We shouldn't have to pass in the path info.
  driver::Driver TheDriver(Args[0], llvm::sys::getDefaultTargetTriple(),
                           *Diags, VFS);

  // Don't check that inputs exist, they may have been remapped.
  TheDriver.setCheckInputsExist(false);

  std::unique_ptr<driver::Compilation> C(TheDriver.BuildCompilation(Args));
  if (!C)
    return nullptr;

  // Just print the cc1 options if -### was present.
  if (C->getArgs().hasArg(driver::options::OPT__HASH_HASH_HASH)) {
    C->getJobs().Print(llvm::errs(), "\n", true);
    return nullptr;
  }

  // We expect to get back exactly one command job, if we didn't something
  // failed. Offload compilation is an exception as it creates multiple jobs. If
  // that's the case, we proceed with the first job. If caller needs a
  // particular job, it should be controlled via options (e.g.
  // --cuda-{host|device}-only for CUDA) passed to the driver.
  const driver::JobList &Jobs = C->getJobs();
  bool OffloadCompilation = false;
  if (Jobs.size() > 1) {
    for (auto &A : C->getActions()){
      // On MacOSX real actions may end up being wrapped in BindArchAction
      if (isa<driver::BindArchAction>(A))
        A = *A->input_begin();
      if (isa<driver::OffloadAction>(A)) {
        OffloadCompilation = true;
        break;
      }
    }
  }
  if (Jobs.size() == 0 || !isa<driver::Command>(*Jobs.begin()) ||
      (Jobs.size() > 1 && !OffloadCompilation)) {
    SmallString<256> Msg;
    llvm::raw_svector_ostream OS(Msg);
    Jobs.Print(OS, "; ", true);
    Diags->Report(diag::err_fe_expected_compiler_job) << OS.str();
    return nullptr;
  }

  const driver::Command &Cmd = cast<driver::Command>(*Jobs.begin());
  if (StringRef(Cmd.getCreator().getName()) != "clang") {
    Diags->Report(diag::err_fe_expected_clang_command);
    return nullptr;
  }

  const ArgStringList &CCArgs = Cmd.getArguments();
  if (CC1Args)
    *CC1Args = {CCArgs.begin(), CCArgs.end()};
  auto CI = std::make_unique<CompilerInvocation>();
  if (!CompilerInvocation::CreateFromArgs(*CI, CCArgs, *Diags, Args[0]) &&
      !ShouldRecoverOnErorrs)
    return nullptr;
  return CI;
}

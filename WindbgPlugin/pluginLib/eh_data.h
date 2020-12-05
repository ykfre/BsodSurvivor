#pragma once
#include <vector>
#include <optional>
#pragma pack(push, ehdata, 4)
typedef struct IptoStateMapEntry2 {
  unsigned int Ip; // Image relative offset of IP
  int State;
} IptoStateMapEntry2;

typedef struct _IMAGE_RUNTIME_FUNCTION_ENTRY2 {
  uint32_t BeginAddress;
  uint32_t EndAddress;
  union {
    uint32_t UnwindInfoAddress;
    uint32_t UnwindData;
  };
} _IMAGE_RUNTIME_FUNCTION_ENTRY2, *_PIMAGE_RUNTIME_FUNCTION_ENTRY2;

typedef struct _IMAGE_RUNTIME_FUNCTION_ENTRY2 RUNTIME_FUNCTION2,
    *PRUNTIME_FUNCTION2;
struct UnwindInfoContinue {
  union {
    unsigned long ExceptionHandler;
    unsigned long FunctionEntry;
  };
  unsigned long ExceptionData;
};

typedef struct _s_FuncInfo2 {
  unsigned int magicNumber : 29; // Identifies version of compiler
  unsigned int bbtFlags : 3;     // flags that may be set by BBT processing
  int maxState;          // Highest state number plus one (thus
                                 // number of entries in unwind map)

  int dispUnwindMap;       // Image relative offset of the unwind map
  unsigned int nTryBlocks; // Number of 'try' blocks in this function
  int dispTryBlockMap;     // Image relative offset of the handler map
  unsigned int
      nIPMapEntries;    // # entries in the IP-to-state map. NYI (reserved)
  int dispIPtoStateMap; // Image relative offset of the IP to state map
  int dispUwindHelp;    // Displacement of unwind helpers from moduleBaseAddress
  int dispESTypeList;   // Image relative list of types for exception
                        // specifications

  int EHFlags; // Flags for some features.
} FuncInfo2;

typedef struct _s_UnwindMapEntry2 {
  int toState; // State this action takes us to
  int action; // Image relative offset of funclet
} UnwindMapEntry2;
#pragma pack(pop, ehdata)

class RunTimeInfoTable {
public:
  RunTimeInfoTable(const std::vector<RUNTIME_FUNCTION2> &RuntimeInfos,
                   void *moduleBaseAddress);

  std::optional<RUNTIME_FUNCTION2> findRunTime(size_t rip);

private:
  std::vector<RUNTIME_FUNCTION2> m_runtimeFunctions;
  void *m_moduleBase;
};

std::optional<RunTimeInfoTable>
getRunTimeTable(size_t moduleStart);

int findState(size_t rip, const std::vector<IptoStateMapEntry2> &ipo);

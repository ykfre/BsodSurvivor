#pragma once
#include <vector>
#include <ehdata.h>
#include <optional>

#pragma pack(push, ehdata, 4)
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
  __ehstate_t maxState;          // Highest state number plus one (thus
                                 // number of entries in unwind map)
#if _EH_RELATIVE_FUNCINFO
  int dispUnwindMap;       // Image relative offset of the unwind map
  unsigned int nTryBlocks; // Number of 'try' blocks in this function
  int dispTryBlockMap;     // Image relative offset of the handler map
  unsigned int
      nIPMapEntries;    // # entries in the IP-to-state map. NYI (reserved)
  int dispIPtoStateMap; // Image relative offset of the IP to state map
  int dispUwindHelp;    // Displacement of unwind helpers from moduleBaseAddress
  int dispESTypeList;   // Image relative list of types for exception
                        // specifications
#else
  UnwindMapEntry *pUnwindMap;     // Where the unwind map is
  unsigned int nTryBlocks;        // Number of 'try' blocks in this function
  TryBlockMapEntry *pTryBlockMap; // Where the handler map is
  unsigned int
      nIPMapEntries;       // # entries in the IP-to-state map. NYI (reserved)
  void *pIPtoStateMap;     // An IP to state map.  NYI (reserved).
  ESTypeList *pESTypeList; // List of types for exception specifications
#endif
  int EHFlags; // Flags for some features.
} FuncInfo2;

typedef struct _s_UnwindMapEntry2 {
  __ehstate_t toState; // State this action takes us to
#if _EH_RELATIVE_FUNCINFO
  int action; // Image relative offset of funclet
#else
  void(__cdecl *action)(void); // Funclet to call to effect state change
#endif
} UnwindMapEntry2;
#pragma pack(pop, ehdata)

class RunTimeInfoTable {
public:
  RunTimeInfoTable(const std::vector<RUNTIME_FUNCTION> &RuntimeInfos, void *moduleBaseAddress);

  std::optional<RUNTIME_FUNCTION> findRunTime(size_t rip);

private:
  std::vector<RUNTIME_FUNCTION> m_runtimeFunctions;
  void *m_moduleBase;
};

std::optional<RunTimeInfoTable>
getRunTimeTable(size_t moduleStart);

int findState(size_t rip, const std::vector<IptoStateMapEntry> &ipo);

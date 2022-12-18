#define __LINE__ #eval #line

#define __VERBOSE__ 1

#ifdef __DEBUG__
#define LOGD(x) Log($$"(__FILE__:__LINE__)"$$ @ x);
#define WARND(x) Warn($$"(__FILE__:__LINE__)"$$ @ x);
#define CONSOLED(x) if(Level.NetMode != NM_DedicatedServer){ Level.GetLocalPlayerController().ClientMessage(Name @ $$"(__FILE__:__LINE__):"$$ @ x); }
#define ECONSOLED(PC, x) if(PC.Level.NetMode != NM_DedicatedServer){ PC.ClientMessage(Name @ $$"(__FILE__:__LINE__):"$$ @ x); }

#ifeq __VERBOSE__ 1
#define PRINTD(x) CONSOLED(x); LOGD(x);
#define EPRINTD(PC, x) ECONSOLED(PC, x); LOGD(x);
#else
#define PRINTD(x) LOGD(x);
#define EPRINTD(PC, x) LOGD(x);
#endif

// SHOWVAR prints the name of a variable and its value.
// Useful for self-documenting log statements.
#define SHOWVAR(x) PRINTD($$"x:"$$ @ x);

// SHOWARR takes an array in ARG1 and an index in ARG2
// and prints the value with the variable name. Only
// works for arrays of objects that can be converted
// directly to strings.
#define SHOWARR(x, y) PRINTD($$"x["$$ $ y $ "]:" @ x[y]);

// DUMPARR takes an array in ARG1 and an iterator in ARG2
// and prints the contents of the entire array. See SHOWARR
// for more info.
#define DUMPARR(x, y) for(y = 0; y < x.Length; y++){ SHOWARR(x, y); }

// DUMPSTATICARR takes an array in ARG1, an iterator in ARG2,
// and an array length in ARG3 and prints the contents of the
// array. See SHOWARR for more info.
#define DUMPSTATICARR(x, y, z) for(y = 0; y < z; y++){ SHOWARR(x, y); }

// Same as SHOWVAR, but with an explicit PlayerController specified.
#define ESHOWVAR(PC, x) EPRINTD(PC, $$"x:"$$ @ x);

// Same as SHOWARR, but with an explicit PlayerController specified.
#define ESHOWARR(PC, x, y) EPRINTD(PC, $$"x["$$ $ y $ "]:" @ x[y]);

// Same as DUMPARR, but with an explicit PlayerController specified.
#define EDUMPARR(PC, x, y) for(y = 0; y < x.Length; y++){ SHOWARR(PC, x, y); }

// Same as DUMPSTATICARR, but with an explicit PlayerController specified.
#define EDUMPSTATICARR(PC, x, y, z) for(y = 0; y < z; y++){ SHOWARR(PC, x, y); }

#else
#define LOGD
#define WARND
#define CONSOLED
#define ECONSOLED
#define PRINTD
#define EPRINTD
#define SHOWVAR
#define SHOWARR
#define DUMPARR
#define DUMPSTATICARR
#define ESHOWVAR
#define ESHOWARR
#define EDUMPARR
#define EDUMPSTATICARR
#endif

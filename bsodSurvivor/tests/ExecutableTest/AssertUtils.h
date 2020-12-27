#pragma once
	#define failTestIfFalse(condition)\
		if (!(condition)) {\
	__debugbreak();\
	}

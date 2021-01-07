namespace blink {
int g = 8;
int m();
int second_obj_func() { return 10; }
extern "C" int functionToSeeChangeInOldCode() { return m(); }
} // namespace blink

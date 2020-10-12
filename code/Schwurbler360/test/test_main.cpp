#ifdef UNIT_TEST
#include <unity.h>

#include "main.h"

void test_would_be_nice(void) { TEST_ASSERT_EQUAL(, ); }

int main(int argc, char **argv) {
  UNITY_BEGIN();
  RUN_TEST(test_would_be_nice);
  UNITY_END();
}

#endif

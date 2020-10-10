#ifdef UNIT_TEST
#include <unity.h>

#include "main.h"

void test_buttons_values(void) {
  TEST_ASSERT_EQUAL(ARRAY_COUNT(buttonControllerPins),
                    AMOUNT_OF_DIGITAL_BUTTONCONTROLLER);
}

int main(int argc, char **argv) {
  UNITY_BEGIN();
  RUN_TEST(test_buttons_values);
  UNITY_END();
}

#endif

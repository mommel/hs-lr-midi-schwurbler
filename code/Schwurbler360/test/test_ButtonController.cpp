#include <ArduinoFake.h>
#include <unity.h>
using namespace fakeit;

#include "Bounce2.h"
#include "controller/button_controller.h"
void setUp(void) { ArduinoFakeReset(); }

#define arrayCount(x) (sizeof(x) / sizeof(x)[0])

void _should_pass(void) {
  Mock<Bounce> mock;
  // Bounce* clientMock = ArduinoFakeMock(Bounce);
  // ButtonController ArduinoFakeMock(_clientMock);
  ButtonController* buttonController;

  buttonController = new ButtonController(3, {0, 1, 2}, {1, 2, 3});
  TEST_ASSERT_EQUAL(3, buttonController->getAmount());
  TEST_ASSERT_EQUAL(2, buttonController->getPin(3));
  TEST_ASSERT_EQUAL(3, buttonController->getMidiValue(3));
}

void _should_fail_on_getAmount(void) {
  /* When(Method(ArduinoFake(), getAmount)).AlwaysReturn(4);

   buttonController = new ButtonController({0, 1, 2}, {1, 2, 3});
   TEST_ASSERT_EQUAL(3, buttonController->getAmount());
   */
}

/*
void _should_fail_on_getAmount(void) {
TEST_ASSERT_EQUAL(2, buttonController->getPin(3)));

TEST_ASSERT_EQUAL(3, buttonController->getMidiValue(3)));
TEST_PASS(buttonController->getData())
}
*/

void process() {
  UNITY_BEGIN();
  RUN_TEST(_should_pass);
  // RUN_TEST(_should_fail);
  UNITY_END();
}

int main(int argc, char** argv) {
  process();
  return 0;
}

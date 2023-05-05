#include <ion.h>
#include "calculator.h"

namespace Ion {
namespace USB {

void DFU(bool exitWithKeyboard, int slot) {
  Ion::updateSlotInfo();
  Ion::Device::USB::Calculator::PollAndReset(exitWithKeyboard, slot);
}

}
}

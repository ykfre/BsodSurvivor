#include <Windows.h>
#include "Event.h"

std::shared_ptr<Event> Event::create() {
  std::shared_ptr<Event> event(new Event());
  event->m_handle = CreateEvent(nullptr, false, false, nullptr);
  if (event->m_handle == nullptr) {
    return nullptr;
  }
  return event;
}

Event::~Event() {
  if (m_handle) {
    auto res = CloseHandle(m_handle);
    if (!res) {
      __debugbreak();
    }
  }
}

bool Event::notify() {
  auto result = SetEvent(m_handle);
  return static_cast<bool>(result);
}

bool Event::wait() {
  if (0 != WaitForSingleObject(m_handle, INFINITE)) {
    return false;
  }
  return true;
}

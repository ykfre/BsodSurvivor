#pragma once
#include <windows.h>
#include <memory>

class Event {
public:
  static std::shared_ptr<Event> create() {
    std::shared_ptr<Event> event(new Event());
    event->m_handle = CreateEvent(nullptr, false, false, nullptr);
    if (event->m_handle == nullptr) {
      return nullptr;
    }
    return event;
  };
  Event(const Event &) = delete;
  Event &operator=(const Event &) = delete;
  Event &operator=(Event &&) = delete;

  Event(Event &&) = delete;

  ~Event() {
    if (m_handle) {
      auto res = CloseHandle(m_handle);
      if (!res) {
        __debugbreak();
      }
    }
  }

  bool notify() {
    auto result = SetEvent(m_handle);
    return static_cast<bool>(result);
  }

  bool wait() {
    if (0 != WaitForSingleObject(m_handle, INFINITE)) {
      return false;
    }
    return true;
  }

private:
  Event() = default;

  HANDLE m_handle = nullptr;
};
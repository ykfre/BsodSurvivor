#pragma once
#include <memory>

class Event {
public:
  static std::shared_ptr<Event> create();
  ;
  Event(const Event &) = delete;
  Event &operator=(const Event &) = delete;
  Event &operator=(Event &&) = delete;

  Event(Event &&) = delete;

  ~Event();

  bool notify();

  bool wait();

private:
  Event() = default;

  void* m_handle = nullptr;
};
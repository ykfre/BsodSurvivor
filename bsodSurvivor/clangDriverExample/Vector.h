#pragma once
template <class T>
class Vector
{
public:
	Vector() = default;
	~Vector()
	{
		delete[]m_ptr;
	}
	void push_back(const T& value)
	{
		m_size++;
		auto new_ptr = new T[m_size];
		memcpy(new_ptr, m_ptr, (m_size - 1) * sizeof(value));
		new_ptr[m_size-1] = value;
		m_ptr = new_ptr;
	}

	T get(size_t i)const
	{
		return m_ptr[i];
	}

	T& get(size_t i)
	{
		return m_ptr[i];
	}

	size_t size()
	{
		return m_size;
	}
	T* m_ptr = nullptr;
	size_t m_size = 0;
};
#pragma warning(push, 0)
#include "Config.h"
#include "Logger.h"
#include "Utils.h"
#include "llvm\Support\JSON.h"
#pragma warning(pop, 0)

bool parse(const std::string &name, std::string &value,
           llvm::json::Object *root) {
  if (root->end() == root->find(name)) {
    writeLog("didn't found " + name);
    return false;
  }
  auto temp = root->find(name)->getSecond().getAsString();
  if (!temp) {
    writeLog(name + " has a bad type");
    return false;
  }
  value = temp.getValue().str();
  return true;
}

bool parse(const llvm::json::Value &value, size_t &out) {
  auto temp = value.getAsInteger();
  if (!temp) {
    return false;
  }
  out = temp.getValue();
  return true;
}

bool parse(const llvm::json::Value &value, std::string &out) {
  auto temp = value.getAsString();
  if (!temp) {
    return false;
  }
  out = temp.getValue().str();
  return true;
}

bool parse(const llvm::json::Value &value, bool &out) {
  auto temp = value.getAsBoolean();
  if (!temp) {
    return false;
  }
  out = temp.getValue();
  return true;
}
template <typename T>
bool parse(const llvm::json::Value &value, std::vector<T> &out) {

  std::vector<T> result;
  if (!value.getAsArray()) {
    return false;
  }
  for (const auto &val : *value.getAsArray()) {
    T valToInser;
    if (!parse(val, valToInser)) {
      return false;
    }
    result.push_back(valToInser);
  }
  out = result;
  return true;
}

template <typename K, typename V>
bool parse(const llvm::json::Value &value, std::map<K, V> &out) {
  if (!value.getAsObject()) {
    return false;
  }
  std::map<K, V> result;
  for (const auto &pair : *value.getAsObject()) {
    V val;
    if (!parse(pair.getSecond(), val)) {
      return false;
    }
    K key;
    if (!parse(pair.getSecond(), key)) {
      return false;
    }
    result[key] = val;
  }
  out = result;
  return true;
}

template <typename T>
bool parse(const std::string &name, const llvm::json::Object &root, T &out) {

  if (root.end() == root.find(name)) {
    writeLog("didn't found " + name);
    return false;
  }

  auto foundVal = root.find(name)->getSecond();
  if (!parse(foundVal, out)) {
    writeLog("bad type for " + name);
    return false;
  }
  return true;
}

[[nodiscard]] bool Config::loadFromString(const std::string &data) {
  auto value = llvm::json::parse(data);
  if (!value) {
    writeLog("bad json formatting");
    return false;
  }
  auto jsonValue = value.get();
  auto root = *jsonValue.getAsObject();
  if (!parse("executablePath", root, executablePath)) {
    return false;
  }
  if (!parse("executableModuleName", root, executableModuleName)) {
    return false;
  }
  if (!parse("serverPort", root, serverPort)) {
    return false;
  }

  if (!parse("modulesNames", root, modulesNames)) {
    return false;
  }
  g_config.callDestructorsFunctionName = "CallDestructors";
  g_config.breakFunctionName = "FunctionToBreak";
  g_config.allocateSpaceInStackFunctionName =
      "allocateSpaceInStack";

  if (!parse("shouldHaveAllocateSpaceInStackFunction", root,
             shouldHaveAllocateSpaceInStackFunction)) {
    return false;
  }
  if (!parse("logCategories", root, logCategories)) {
    return false;
  }
  return true;
}

bool Config::load(const std::string &filePath) {
  auto data = readFile(filePath);
  if (!data) {
    writeLog("failed to read config " + filePath);
    return false;
  }
  return loadFromString(std::string{data.value().begin(), data.value().end()});
}

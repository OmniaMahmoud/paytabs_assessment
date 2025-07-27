class JsonHelper {
  static bool canParseData(dynamic json) {
    if (json == null ||
        ((json is Map) && json.entries.isEmpty) ||
        ((json is List) && (json).isEmpty) ||
        (json is String)) {
      return false;
    } else {
      return true;
    }
  }
}

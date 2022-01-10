
typedef FromJson<T> = T Function(dynamic json);

FromJson<String> fromStringJson = (dynamic json) => json;
FromJson<int> fromIntJson = (dynamic json) => json;
FromJson<double> fromDoubleJson = (dynamic json) => json;
FromJson<bool> fromBoolJson = (dynamic json) => json;
FromJson<Map<String, dynamic>> fromMapJson = (dynamic json) => json;
FromJson<List<String>> fromListStringJson = fromListJson(fromStringJson);
FromJson<List<int>> fromListIntJson = fromListJson(fromIntJson);
FromJson<List<bool>> fromListBoolJson = fromListJson(fromBoolJson);

FromJson<List<T>> fromListJson<T>(FromJson<T> fromJson) => (dynamic json) {
  List<T> list = [];
  if (json != null && json is List) {
    list = json.map((e) => fromJson(e)).toList();
  }
  return list;
};


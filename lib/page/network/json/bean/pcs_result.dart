import 'form_json.dart';

class PcsResult<D> {
  PcsResult({
    int? success,
    String? msg,
    D? data,
  }) {
    _success = success;
    _msg = msg;
    _data = data;
  }

  PcsResult.fromJson(dynamic json, [FromJson<D>? fromJson]) {
    _success = json['success'];
    _msg = json['msg'];
    var data = json['data'];
    D? responseData;
    try {
      if (data != null) {
        if (fromJson != null) {
          responseData = fromJson(data);
        } else {
          responseData = data;
        }
      }
    } catch (e, stack) {
      throw "responseData解析异常: $e\n$stack";
    }
    _data = responseData;
  }

  int? _success;
  String? _msg;
  D? _data;

  int? get success => _success;

  String? get msg => _msg;

  D? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['msg'] = _msg;
    map['data'] = _data;
    return map;
  }
}

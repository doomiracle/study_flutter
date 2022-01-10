/// warehouseId : "10026001"
/// version : "2.11.46"
/// url : "http://mupppub.cn-hangzhou.oss.aliyun-inc.com/15352455/app/build/outputs/apk/release/201200%40pcs_android_2.11.46-release.apk"
/// info : "质量稽查功能优化"
/// force : false

class VersionInfo {
  VersionInfo({
      String? warehouseId, 
      String? version, 
      String? url, 
      String? info, 
      bool? force,}){
    _warehouseId = warehouseId;
    _version = version;
    _url = url;
    _info = info;
    _force = force;
}

  VersionInfo.fromJson(dynamic json) {
    _warehouseId = json['warehouseId'];
    _version = json['version'];
    _url = json['url'];
    _info = json['info'];
    _force = json['force'];
  }
  String? _warehouseId;
  String? _version;
  String? _url;
  String? _info;
  bool? _force;

  String? get warehouseId => _warehouseId;
  String? get version => _version;
  String? get url => _url;
  String? get info => _info;
  bool? get force => _force;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['warehouseId'] = _warehouseId;
    map['version'] = _version;
    map['url'] = _url;
    map['info'] = _info;
    map['force'] = _force;
    return map;
  }

}
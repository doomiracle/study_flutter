
import 'package:dio/dio.dart';

class DioController {
  /// 定义一个Dio对象
  /// 可以传入一个 BaseOptions 设置默认值
  /// 配置信息
  ///   参数：
  ///     method          请求方式；GET、POST
  ///     baseUrl         请求基地址,可以包含子路径，如: "https://www.google.com/api/".
  ///     headers         Http请求头
  ///     connectTimeout  连接服务器超时时间，单位是毫秒
  ///     receiveTimeout  接收数据的最长时限
  ///     path            请求路径，如果 `path` 以 "http(s)"开始, 则 `baseURL` 会被忽略； 否则将会和baseUrl拼接出完整的的url
  ///     contentType     请求的Content-Type，默认值是"application/json; charset=utf-8"
  ///                     如果您想以"application/x-www-form-urlencoded"格式编码请求数据，可以设置此选项为 `Headers.formUrlEncodedContentType`
  ///     responseType    表示期望以那种格式(方式)接受响应数据；接受三种类型 `JSON`, `STREAM`, `PLAIN`
  ///                     默认值是 `JSON`, 当响应头中content-type为"application/json"时，dio 会自动将响应内容转化为json对象
  ///                     如果想以二进制方式接受响应数据，如下载一个二进制文件，那么可以使用 `STREAM`
  ///                     如果想以文本(字符串)格式接收响应数据，请使用 `PLAIN`
  ///     validateStatus  决定http响应状态码是否被dio视为请求成功返回`validateStatus`返回`true` , 请求结果就会按成功处理，否则会按失败处理.
  ///     extra           用户自定义字段，可以在 [Interceptor]、[Transformer] 和 [Response] 中取到
  ///     queryParameters 公共的请求参数
  ///     collectionFormat  请求数据中数组的编码的方式，具体可以参考CollectionFormat的定义
  Dio dio = Dio(BaseOptions(
    // 默认的请求地址
    baseUrl: 'http://pcs-api.wt.cainiao.com',
    // 默认的连接时长
    connectTimeout: 20000,
    // 默认的接收时长
    receiveTimeout: 20000,
  ));

  /// 初始化动作
  void initDio() {
    // 添加日志拦截器
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }

  /// get请求
  ///   参数：
  ///     path  请求路径，如果这里写全路径，则会覆盖原有的路径，如果不写全路径，则使用默认域名
  ///     queryParameters 请求参数，会自动拼接到URL后面
  ///
  /// 返回的是一个 Response 对象
  ///   参数：
  ///     data        响应数据，可能已经被转换了类型
  ///     headers     响应头
  ///     request     本次请求信息
  ///     statusCode  Http 状态码
  ///     statusMessage Http状态码 ??? 目前测试大多数都是返回 ""
  ///     isRedirect  是否重定向(Flutter Web不可用)
  ///     redirects   重定向信息(Flutter Web不可用)
  ///     realUri     真正请求的url(重定向最终的uri)
  ///     extra       响应对象的自定义字段（可以在拦截器中设置它），调用方可以在`then`中获取
  Future<String> get1() async {
    Response response = await dio.get<String>(
      // 请求地址
      "http://wms-fulfillment.test.i4px.com/warehouses/getAreaInfo",
      // 请求参数
      queryParameters: {
        'regionalCode': 'FB40003',
        'userCode': 'S6304',
        'areaCode': 'CN',
        'isTemporary': 0
      },
    );
    print(response);
    return getDataByResponse(response);
  }

  /// post请求
  /// 表单格式
  Future<String> post1() async {
    Response response = await dio.post<String>(
      // 请求地址
      "http://pcs-api.wt.cainiao.com/api/UserWarehouse/getList",
      // 请求参数
      data:
          FormData.fromMap({'session': '24956798', 'userId': '2208872357099'}),
    );
    return getDataByResponse(response);
  }

  /// post请求
  /// json格式
  Future<String> post2() async {
    Response response = await dio.post<String>(
      // 请求地址
      "http://pcs-api.wt.cainiao.com/api/UserWarehouse/getList",
      // 请求参数
      data: {'session': '24956798', 'userId': '2208872357099'},
    );
    return getDataByResponse(response);
  }

  /// 将Response中数据取出
  String getDataByResponse(Response response) {
    if (response.statusCode == 200) {
      return response.data.toString();
    } else {
      return "HTTP ${response.statusCode}";
    }
  }
}

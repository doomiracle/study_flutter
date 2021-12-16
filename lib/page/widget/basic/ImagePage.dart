import 'package:flutter/material.dart';
import '/sample/widget/basic/ImageSample.dart';

/// 图片 以及 矢量图
/// 可以通过Image组件来加载并显示图片，Image的数据源可以是asset、文件、内存以及网络。
/// Flutter框架对加载过的图片是有缓存的（内存），默认最大缓存数量是1000，最大缓存空间为100M
/// 矢量图的地址：https://material.io/tools/icons/
class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图片示例"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(5.0), child: AssetImage1()),
          Padding(padding: EdgeInsets.all(5.0), child: NetworkImage1()),
          Padding(padding: EdgeInsets.all(5.0), child: Icons2()),
        ],
      ),
    );
  }
}
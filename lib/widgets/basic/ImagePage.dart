import 'package:flutter/material.dart';

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

/// 从本地资源加载图片
/// 常见属性：
///       width 图片的宽；设置图片的宽、高，当不指定宽高时，图片会根据当前父容器的限制，尽可能的显示其原始大小，如果只设置width、height的其中一个，那么另一个属性默认会按比例缩放
///       height  图片高度
///       fit 缩放模式
///       alignment 对齐方式
///       repeat  重复方式  ImageRepeat.repeatY
class AssetImage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("images/ic_login_scan.png"),
      width: 50.0,
      height: 30.0,
      fit: BoxFit.contain,
    );
  }
}

/// 从本地资源加载图片
class AssetImage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset("images/ic_login_scan.png");
  }
}

/// 从网络中加载图片
class NetworkImage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(
          "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
      width: 50.0,
    );
  }
}

/// 从网络中加载图片
class NetworkImage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4");
  }
}

/// 使用文本定义图标，使用不太友好
class Icons1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icons = "";
    // accessible: &#xE914; or 0xE914 or E914
    icons += "\ue87d";
    // error: &#xE000; or 0xE000 or E000
    icons += " \ue90d";
    // fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \ue91d";

    return Text(
      icons,
      style: TextStyle(
          fontFamily: "MaterialIcons", fontSize: 24.0, color: Colors.blue),
    );
  }
}

/// 使用Icons中的图标库
class Icons2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.add_location_alt_outlined, color: Colors.blue);
  }
}

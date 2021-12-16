import 'package:flutter/material.dart';

/// MD风格脚手架
/// 一个完成的界面，包含 导航栏、抽屉菜单、底部导航、内容 等
/// * 如果给Scaffold添加了抽屉菜单，默认情况下Scaffold会自动将AppBar的leading设置为菜单按钮
/// todo 底部导航打洞效果
/// 常用属性：
///       appBar  顶部导航栏；AppBar
///                             title 标题
///                             leading 导航栏最左侧Widget，常见为抽屉菜单按钮或返回按钮
///                             automaticallyImplyLeading 如果leading为null，是否自动实现默认的leading按钮;默认true
///                             bottom  导航栏底部菜单，通常为Tab按钮组
///                             actions 导航栏右侧菜单
///                             elevation 导航栏阴影
///                             centerTitle 标题是否居中
///                             backgroundColor 背景颜色；默认主题色
///       drawer  抽屉
///       body  内容
///       floatingActionButton  悬浮按钮；FloatingActionButton
///                                          child  悬浮按钮内容
///                                          onPressed  点击事件
///       bottomNavigationBar 底部导航；BottomNavigationBar
///                                           items 菜单集合；BottomNavigationBar
///                                           currentIndex  当前被选中的角标
///                                           fixedColor  被选中的颜色
///                                           onTap 被选中点击事件
///
class ScaffoldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScaffoldPageState();
  }
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("脚手架示例"),
        leading: IconButton(
          icon: Icon(Icons.backspace, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                print("导航栏右侧菜单被点击");
              }),
        ],
        elevation: 4.0,
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.cyanAccent,
        constraints: BoxConstraints.expand(),
        alignment: Alignment.center,
        child: Text("这是内容区域"),
      ),
      floatingActionButton: FloatingActionButton(
        //悬浮按钮
        child: Icon(Icons.add),
        onPressed: () => print("悬浮按钮被点击..."),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

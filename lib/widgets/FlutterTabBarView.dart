import 'package:flutter/material.dart';

class FlutterTabBarView extends StatefulWidget {
  final TabController tabController;

  FlutterTabBarView({Key key, @required this.tabController}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FlutterTabBarViewState(tabController: tabController);
  }
}

var viewList;

class _FlutterTabBarViewState extends State<FlutterTabBarView> {
  final TabController tabController;

  _FlutterTabBarViewState({@required this.tabController});

  @override
  void initState() {
    super.initState();
    viewList = [
      Page1(),
      Page2(),
      Page3(),
      Page4(),
      Page5(),
      Page1(),
    ];
  }

  @override
  Widget build(BuildContext context) {
//    TabBarView({
//    Key key,
//    @required this.children,
//    this.controller,
//    this.physics,
//    })
    return TabBarView(
      children: viewList,
      controller: tabController,
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page1'),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page2'),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page3'),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page4'),
    );
  }
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page5'),
    );
  }
}

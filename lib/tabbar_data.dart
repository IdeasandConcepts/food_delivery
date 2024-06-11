
import 'package:flutter/material.dart';
// class TabsConfig {
//   static List<String> tabs = [];
//   static int selectedTabIndex = 0;
// }

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  List<String> tabs = [];
  int selectedTabIndex = 0;
  late TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(
      length:tabs.length,
      vsync: this,
      initialIndex: selectedTabIndex,
    );
    super.initState();
  }

  void updateTabs() {
    try {
      controller = TabController(
        length: tabs.length,
        vsync: this,
        initialIndex: selectedTabIndex,
      );
      setState(() {
        controller = TabController(
          length: tabs.length,
          vsync: this,
          initialIndex: selectedTabIndex,
        );
      });
    } catch (on) {
      print(on); // TODO: rem
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TabBar(
              isScrollable: true,
              controller: controller,
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Theme.of(context).hintColor,
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2,
                  ),
                ),
              ),
              tabs: List.generate(
                tabs.length,
                    (index) => Text("${tabs[index]}"),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: List.generate(tabs.length,
                      (index) => Center(
                    child: Text("${tabs[index]}"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     tabs.add('New tab ${tabs.length}');
      //     // setState(() {});
      //     updateTabs();
      //   },
      // ),
    );
  }
}
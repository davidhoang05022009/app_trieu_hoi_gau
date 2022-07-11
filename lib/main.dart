import 'package:flutter/material.dart';
import 'pages/boy.dart';
import 'pages/girl.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App triệu hồi gấu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> availableAppBarTitle = ["Cho bạn nam", "Cho bạn nữ"];
  late String appBarTitle = availableAppBarTitle[0];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(
        builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context)!;
          tabController.addListener(
            () {
              if (!tabController.indexIsChanging) {
                setState(() {
                  // Rebuild the enclosing scaffold with a new AppBar title
                  appBarTitle = availableAppBarTitle[tabController.index];
                });
              }
            },
          );

          return Scaffold(
            appBar: AppBar(
              title: Text(
                appBarTitle,
                style: appTextStyle,
              ),
            ),
            body: const TabBarView(
              children: [
                PageForBoy(),
                PageForGirl(),
              ],
            ),
            bottomNavigationBar: TabBar(
              labelStyle: appTextStyle.copyWith(
                fontSize: 12,
              ),
              labelColor: Colors.black,
              tabs: [
                Tab(
                  icon: const Icon(
                    IconData(0x1F466),
                  ),
                  text: availableAppBarTitle[0],
                ),
                Tab(
                  icon: const Icon(
                    IconData(0x1F467),
                  ),
                  text: availableAppBarTitle[1],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

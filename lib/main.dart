import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/components/custom_bottom_navigation_bar.dart';
import 'package:todo_app/pages/doing_page/doing_page.dart';
import 'package:todo_app/pages/main_page/main_page.dart';
import 'package:todo_app/pages/project_page/project_page.dart';
import 'package:todo_app/providers/db/sqlflite_provider.dart';
import 'package:todo_app/providers/tab_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SqfliteProvider()),
        ChangeNotifierProvider(create: (context) => TabProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _tabs = const [
    MainPage(),
    ProjectPage(),
    DoingPage(),
  ];

  void onClickingBottomBarButton(int index) {
    Provider.of<TabProvider>(context, listen: false).setCurrentTabIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TeamDoes',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        body: Consumer<TabProvider>(
          builder: (context, tabProvider, child) {
            return GestureDetector(
              onTap: Provider.of<SqfliteProvider>(context).manualInsertionDb,
              child: _tabs[tabProvider.currentTabIndex],
            );
          },
        ),
        bottomNavigationBar:
            CustomBottomNavigationBar(onTap: (onClickingBottomBarButton)),
      ),
    );
  }
}

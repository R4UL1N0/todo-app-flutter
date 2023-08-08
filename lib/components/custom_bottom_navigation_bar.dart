import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/tab_provider.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function onTap;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  // int _currentIndex = 0;

  void _onTap(int index) {
    // widget.onTap(index);

    Provider.of<TabProvider>(context, listen: false).setCurrentTabIndex(index);
  }

  @override
  Widget build(BuildContext context) {

    int index = Provider.of<TabProvider>(context).currentTabIndex;
    return BottomNavigationBar(
      selectedIconTheme: const IconThemeData(size: 32),
      selectedFontSize: 0,
      currentIndex: index,
      onTap: (_onTap),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],
    );
  }
}

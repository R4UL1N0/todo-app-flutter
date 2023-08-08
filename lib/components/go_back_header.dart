import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/tab_provider.dart';

class GoBackHeader extends StatelessWidget {
  final String title;

  const GoBackHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Provider.of<TabProvider>(context, listen: false)
                .setCurrentTabIndex(0),
            icon: const Icon(
              MaterialCommunityIcons.arrow_left_drop_circle,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Stack(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    right: 50,
                    child: SizedOverflowBox(
                      size: Size(0, 0),
                      child: IconButton(
                        iconSize: 100,
                        onPressed: null,
                        icon: Icon(
                          Ionicons.add_circle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

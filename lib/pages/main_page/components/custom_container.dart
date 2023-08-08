import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/tab_provider.dart';

class CustomContainerMainPage extends StatelessWidget {
  final String title;
  final Widget child;
  final int tabIndex;
  const CustomContainerMainPage(
      {super.key,
      required this.child,
      required this.title,
      required this.tabIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    child,
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Transform.translate(
                  offset: const Offset(-10, 30),
                  child: GestureDetector(
                    onTap: () =>
                        Provider.of<TabProvider>(context, listen: false)
                            .setCurrentTabIndex(tabIndex),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          // borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          'See All...',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

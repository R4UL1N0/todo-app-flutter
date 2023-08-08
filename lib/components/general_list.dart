import 'package:flutter/material.dart';

class GeneralList extends StatelessWidget {
  final List<String> listItems;
  const GeneralList({super.key, required this.listItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            listItems[index],
          ),
          trailing: const Icon(Icons.chevron_right_outlined),
        );
      },
    );
  }
}

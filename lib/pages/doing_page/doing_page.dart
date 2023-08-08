import 'package:flutter/material.dart';
import 'package:todo_app/components/go_back_header.dart';
import 'package:todo_app/pages/doing_page/components/doing_container.dart';
import 'package:todo_app/pages/main_page/components/animated_container.dart';
import 'package:todo_app/pages/project_page/components/project_container.dart';
import 'package:todo_app/utils/app_colors.dart';

class DoingPage extends StatelessWidget {
  const DoingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double calcIndex(index, itemsLength) {
      double i = itemsLength - (index + 1.0);
      double y = 35.0;

      double result = y * i;

      return result;
    }

    int listLength = 8;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 35),
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 201, 200, 200),
      ),
      child: Column(
        children: [
          const GoBackHeader(title: 'Doings'),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: 3,
            color: AppColors.borderColor,
            margin: EdgeInsets.symmetric(vertical: 20),
          ),
          Expanded(
            child: Container(
              
              width: MediaQuery.of(context).size.width / 1.2,
              // margin: EdgeInsets.all(10),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: listLength,
                itemBuilder: (context, index) {
                  return DoingContainer(
                    index: index,
                    supposedHeight: calcIndex(index, listLength),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

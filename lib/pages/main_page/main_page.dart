import 'package:flutter/material.dart';
import 'package:todo_app/components/general_list.dart';
import 'package:todo_app/pages/main_page/components/animated_container.dart';
import 'package:todo_app/pages/main_page/components/custom_container.dart';
import 'package:todo_app/utils/app_colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.backgroundColor,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            CustomAnimatedContainer(
              text: "Hello, @User",
              isMain: true,
            ),
            CustomContainerMainPage(
              tabIndex: 1,
              title: 'Current Projects',
              child: GeneralList(
                listItems: ['One', 'Two', 'Three'],
              ),
            ),
            CustomContainerMainPage(
              tabIndex: 2,
              title: 'Currently doing',
              child: GeneralList(
                listItems: ['One', 'Two', 'Three'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

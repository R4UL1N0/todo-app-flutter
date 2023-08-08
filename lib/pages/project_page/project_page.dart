import 'package:flutter/material.dart';
import 'package:todo_app/components/go_back_header.dart';
import 'package:todo_app/pages/main_page/components/animated_container.dart';
import 'package:todo_app/pages/project_page/components/new_project_container.dart';
import 'package:todo_app/pages/project_page/components/new_project_modal_form.dart';
import 'package:todo_app/pages/project_page/components/project_container.dart';
import 'package:todo_app/utils/app_colors.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 35),
      // height: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.backgroundColor,
      ),
      child: Column(
        children: [
          const GoBackHeader(title: 'Projects'),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: 3,
            color: AppColors.borderColor,
            margin: EdgeInsets.symmetric(vertical: 20),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisExtent: 150,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return NewProjectContainer(index: index);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

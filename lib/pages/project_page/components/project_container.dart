import 'package:flutter/material.dart';
import 'package:todo_app/utils/app_colors.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProjectContainer extends StatefulWidget {
  final int index;
  const ProjectContainer({super.key, required this.index});

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Ionicons.bug,
                      size: 20,
                    ),
                    Icon(Ionicons.bug, size: 20),
                    Icon(Ionicons.bug, size: 20),
                  ],
                ),
              ),
              Container(
                // width: MediaQuery.of(context).size.width / 3,
                // width: 150,
                padding: const EdgeInsets.all(5),
                // color: AppColors.borderColor,
                child: Text('', // '${widget.index + 1}'
                    style: const TextStyle(color: Colors.black, fontSize: 20)),
              ),
            ],
          ),
          GestureDetector(
            onTap: () => {_isExpanded = !_isExpanded, setState(() {})},
            child: Container(
              width: double.infinity,
              color: Colors.grey,
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Content project ${widget.index}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    _isExpanded ? Icons.arrow_upward : Icons.arrow_downward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            height: _isExpanded ? 100 : 0,
            color: Colors.white,
            duration: Duration(milliseconds: 500),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Container(
                //   color: Colors.redAccent,
                //   width: 40,
                //   height: 40,
                // ),
                // Container(
                //   color: Colors.redAccent,
                //   width: 40,
                //   height: 40,
                // ),
              ],
            ), 
          ),
        ],
      ),
    );
  }
}

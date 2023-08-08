import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:todo_app/utils/app_colors.dart';

class NewProjectContainer extends StatelessWidget {
  final int index;
  const NewProjectContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        // border: Border.all(
        //   width: 2,
        //   color: const Color.fromRGBO(0, 0, 0, 0.1),
        // ),
      ),
      child: Column(
        children: [
          // Container(
          //   padding: EdgeInsets.all(5),
          //   width: double.infinity,
          //   decoration: const BoxDecoration(
          //     color: AppColors.backgroundColor,
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         'Project ${index + 1}',
          //         style: const TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w500,
          //         ),
          //       ),
          //       Icon(Ionicons.battery_full),
          //     ],
          //   ),
          // ),
          Expanded(
            child: Container(
              // padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.all(5),
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              color: Colors.white,
                              child: Icon(Icons.people),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              color: Colors.grey,
                              child: const Center(
                                child: Text(
                                  '10',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.all(5),
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              color: Colors.grey,
                              child: const Center(
                                child: Text(
                                  '20/20/23',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              color: Colors.white,
                              child: const Center(
                                child: Text(
                                  '10%',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
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
            ),
          ),
        ],
      ),
    );
  }
}

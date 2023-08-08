import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/tab_provider.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../project_page/components/new_project_modal_form.dart';

class CustomAnimatedContainer extends StatefulWidget {
  const CustomAnimatedContainer(
      {super.key,
      required this.text,
      this.isMain = false,
      this.isProjectPage = false,
      this.onPressing});

  final String text;
  final bool isMain;
  final bool isProjectPage;
  final Function? onPressing;

  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  double _widgetHeight = 50.0;
  bool _isSmall = true;

  void _increaseSize() {
    setState(() {
      if (_isSmall) {
        _widgetHeight = 100.0;
      } else {
        _widgetHeight = 50.0;
      }

      _isSmall = !_isSmall;
    });
  }

  Future<dynamic> onPressed() {
    return showModalBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
        // Use SingleChildScrollView to avoid overflow errors
        child: Container(
          height: 300,
          padding: const EdgeInsets.all(20.0),
          child: const NewProjectModalForm(), // Add your form widget here
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: GestureDetector(
        onTap: null,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: double.infinity,
          height: _widgetHeight,
          // color: const Color.fromARGB(255, 201, 200, 200),
          child: Row(
            mainAxisAlignment: widget.isMain
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  widget.isMain
                      ? Container()
                      : IconButton(
                          onPressed: () =>
                              Provider.of<TabProvider>(context, listen: false)
                                  .setCurrentTabIndex(0),
                          icon: const Icon(AntDesign.leftcircle)),
                  Center(
                    child: Text(
                      widget.text,
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              widget.isMain
                  ? Container()
                  : widget.isProjectPage
                      ? Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () => {onPressed()},
                              icon: const Icon(
                                Icons.add_circle_rounded,
                                size: 40,
                              ),
                            ),
                          ),
                        )
                      : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

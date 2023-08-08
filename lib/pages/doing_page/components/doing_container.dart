import 'package:flutter/material.dart';

class DoingContainer extends StatelessWidget {
  final double supposedHeight;
  final int index;
  const DoingContainer(
      {super.key, required this.supposedHeight, required this.index});

  // calcIndex(index, listLength)
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10),
          height: 100,
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hi from ${index + 1}'),
              Container(
                width: supposedHeight / 4,
                height: supposedHeight / 4,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50)),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: -30,
          child: Transform.translate(
            offset: const Offset(-10, 40),
            child: Transform.rotate(
              angle: 3,
              child: Container(
                height: 20,
                width: 60,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 0,
          child: Transform.translate(
            offset: const Offset(-10, 40),
            child: Transform.rotate(
              angle: 3,
              child: Container(
                height: 15,
                width: 50,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

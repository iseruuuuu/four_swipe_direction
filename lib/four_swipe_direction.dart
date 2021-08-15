import 'package:flutter/material.dart';

class FourSwipeDirection extends StatefulWidget {
  final Function()? swipeUp;
  final Function()? swipeDown;
  final Function()? swipeLeft;
  final Function()? swipeRight;
  final Widget child;

  const FourSwipeDirection({
    Key? key,
    required this.child,
    this.swipeUp,
    this.swipeDown,
    this.swipeLeft,
    this.swipeRight,
  }) : super(key: key);

  @override
  _FourSwipeDirectionState createState() => _FourSwipeDirectionState();
}

class _FourSwipeDirectionState extends State<FourSwipeDirection> {
  late Offset horizontalOffset;
  late Offset verticalOffset;
  late bool isUp;
  late bool isDown;
  late bool isLeft;
  late bool isRight;

  @override
  void initState() {
    super.initState();
    horizontalOffset = const Offset(0, 0);
    verticalOffset = const Offset(0, 0);
    isUp = false;
    isDown = false;
    isLeft = false;
    isRight = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: widget.child,
      onHorizontalDragStart: (details) {
        horizontalOffset = details.localPosition;
      },
      onVerticalDragStart: (details) {
        verticalOffset = details.localPosition;
      },
      onHorizontalDragUpdate: (details) {
        if (horizontalOffset.dx > details.localPosition.dx) {
          isUp = false;
          isDown = false;
          isLeft = true;
          isRight = false;
        } else {
          isUp = false;
          isDown = false;
          isLeft = false;
          isRight = true;
        }
      },
      onVerticalDragUpdate: (details) {
        if (verticalOffset.dy > details.localPosition.dy) {
          isUp = true;
          isDown = false;
          isLeft = false;
          isRight = false;
        } else {
          isUp = false;
          isDown = true;
          isLeft = false;
          isRight = false;
        }
      },
      onHorizontalDragEnd: (details) {
        if (isLeft) {
          widget.swipeLeft!();
        } else if (isRight) {
          widget.swipeRight!();
        }
      },
      onVerticalDragEnd: (details) {
        if (isUp) {
          widget.swipeUp!();
        } else if (isDown) {
          widget.swipeDown!();
        }
      },
    );
  }
}

import 'package:flutter/material.dart';

class AnimationControllerLesson extends StatefulWidget {
  @override
  State<AnimationControllerLesson> createState() =>
      _AnimationControllerLessonState();
}

// SingleTickerProviderStateMixin --> one animated controller , [Create animation controller]
// TickerProviderStateMixin --> more than one animated controller
class _AnimationControllerLessonState extends State<AnimationControllerLesson>
    with SingleTickerProviderStateMixin {
  AnimationController? controller; // controller to animation
  Animation? animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 10, // This is a duration between tween [50 - 200]
      ),
    );
    animation = Tween(
      begin: 50.0,
      end: 200.0,
      // addStatusListener --> invoked when change case of animation (begin , end)
    ).animate(controller!)
      ..addStatusListener((status) {
        print(status);
        if (status == AnimationStatus.completed) {
          print('Status Completed');
        }
        // addListener --> invoked when change value of animation from 50 to 200 in 1 sec
      })
      ..addListener(() {
        setState(() {});
        print("value $animation");
      });
    controller!
        .forward(); // controller control with animation and so Use it here
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animation',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Container(
              alignment: AlignmentDirectional.center,
              margin: const EdgeInsets.only(top: 50),
              child: Transform.rotate(
                angle: 3.14  * animation!.value,
                child: Container(
                  color: Colors.deepOrange,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

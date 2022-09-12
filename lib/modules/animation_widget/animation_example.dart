import 'package:flutter/material.dart';

class AnimationExample extends StatefulWidget {
  @override
  State<AnimationExample> createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> {
  bool isStart = true;
  var topPhpContainer = 450.0;
  var topRectContainer = 450.0;
  var topFlutterContainer = 450.0;
  var topBlackPhpContainer = 550.0;
  var topBlackRectContainer = 550.0;
  var topBlackFlutterContainer = 550.0;
  var phpColor = Colors.red;
  var rectColor = Colors.green;
  var flutterColor = Colors.blue;
  var fontLanguage = 18.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animation',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(seconds: 2),
                     bottom:isStart ? 0 : 75,
                     left: isStart ? 0 : 75,
                    child: Stack(
                      children: [
                        AnimatedPadding(
                          duration: const Duration(seconds: 1,),
                          curve: Curves.linear,
                          padding: EdgeInsets.only(
                            top: topPhpContainer,
                          ),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 2,),
                            height: double.infinity,
                            width: 75,
                            color: phpColor,
                          ),
                        ),
                        if (isStart)
                          AnimatedPadding(
                            duration: const Duration(seconds: 1,),
                            curve: Curves.linear,
                            padding: EdgeInsets.only(
                              top: topBlackPhpContainer,
                              left: 15.0,
                            ),
                            child: AnimatedDefaultTextStyle (
                              curve: Curves.elasticIn,
                              duration: const Duration(
                                seconds: 2,
                              ),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: fontLanguage,
                              ),
                              child: const Text(
                                'PHP',
                              ),
                            ),
                          ),
                        if (!isStart)
                          AnimatedPadding(
                            duration: const Duration(seconds: 1,),
                            curve: Curves.linear,
                            padding: EdgeInsets.only(
                              top: topBlackPhpContainer,
                              left: 10.0,
                            ),
                            child: AnimatedDefaultTextStyle (
                              curve: Curves.elasticIn,
                              duration: const Duration(
                                seconds: 2,
                              ),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: fontLanguage,
                              ),
                              child: const Text(
                                'PHP',
                              ),
                            ),
                          ),
                        AnimatedPadding(
                          duration: const Duration(seconds: 1,),
                          curve: Curves.linear,
                          padding: EdgeInsets.only(
                            top: topBlackPhpContainer,
                          ),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 2,),
                            width: 75,
                            height: double.infinity,
                            color: Colors.black12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: [
                      AnimatedPadding(
                        duration: const Duration(seconds: 1,),
                        curve: Curves.linear,
                        padding: EdgeInsets.only(
                          top: topRectContainer,
                        ),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 2,),
                          height: double.infinity,
                          width: 75,
                          color: rectColor,
                        ),
                      ),
                      if (isStart)
                        AnimatedPadding(
                          duration: const Duration(seconds: 1,),
                          curve: Curves.linear,
                          padding: EdgeInsets.only(
                            top: topBlackRectContainer,
                            left: 15.0,
                          ),
                          child: AnimatedDefaultTextStyle (
                            curve: Curves.elasticIn,
                            duration: const Duration(
                              seconds: 2,
                            ),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: fontLanguage,
                            ),
                            child: const Text(
                              'Rect',
                            ),
                          ),
                        ),
                      if (!isStart)
                        AnimatedPadding(
                          duration: const Duration(seconds: 1,),
                          curve: Curves.linear,
                          padding: EdgeInsets.only(
                            top: topBlackRectContainer,
                            left: 10.0,
                          ),
                          child: AnimatedDefaultTextStyle (
                            curve: Curves.elasticIn,
                            duration: const Duration(
                              seconds: 2,
                            ),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: fontLanguage,
                            ),
                            child: const Text(
                              'Rect',
                            ),
                          ),
                        ),

                      AnimatedPadding(
                        duration: const Duration(seconds: 1,),
                        curve: Curves.linear,
                        padding: EdgeInsets.only(
                          top: topBlackRectContainer,
                        ),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 2,),
                          width: 75,
                          height: double.infinity,
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: [
                      AnimatedPadding(
                        duration: const Duration(seconds: 1,),
                        curve: Curves.linear,
                        padding: EdgeInsets.only(
                          top: topFlutterContainer,
                        ),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 2,),
                          height: double.infinity,
                          width: 75,
                          color: flutterColor,
                        ),
                      ),
                      if (isStart)
                        AnimatedPadding(
                          duration: const Duration(seconds: 1,),
                          curve: Curves.linear,
                          padding: EdgeInsets.only(
                            top: topBlackFlutterContainer,
                            left: 7.5,
                          ),
                          child: AnimatedDefaultTextStyle (
                            curve: Curves.elasticIn,
                            duration: const Duration(
                              seconds: 2,
                            ),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: fontLanguage,
                            ),
                            child: const Text(
                              'Flutter',
                            ),
                          ),
                        ),
                      if (!isStart)
                        AnimatedPadding(
                          duration: const Duration(seconds: 1,),
                          curve: Curves.linear,
                          padding: EdgeInsets.only(
                            top: topBlackFlutterContainer,
                          ),
                          child: AnimatedDefaultTextStyle (
                            curve: Curves.elasticIn,
                            duration: const Duration(
                              seconds: 2,
                            ),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: fontLanguage,
                            ),
                            child: const Text(
                              'Flutter',
                            ),
                          ),
                        ),

                      AnimatedPadding(
                        padding: EdgeInsets.only(
                          top: topBlackFlutterContainer,
                        ),
                        duration: const Duration(seconds: 1,),
                        curve: Curves.linear,
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 2,),
                          width: 75,
                          height: double.infinity,
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.grey,
                  child: MaterialButton(
                    onPressed: () {
                    setState(() {
                      topPhpContainer = 450.0;
                      topRectContainer = 450.0;
                      topFlutterContainer = 450.0;
                      topBlackPhpContainer = 550.0;
                      topBlackRectContainer = 550.0;
                      topBlackFlutterContainer = 550.0;
                      phpColor = Colors.red;
                      rectColor = Colors.green;
                      flutterColor = Colors.blue;
                      fontLanguage = 18.0;
                      isStart = true;
                    });
                    },
                    child: const Text(
                      'Start',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        topPhpContainer = 450.0;
                        topRectContainer = 400.0;
                        topFlutterContainer = 500.0;
                        topBlackPhpContainer = 580.0;
                        topBlackRectContainer = 500.0;
                        topBlackFlutterContainer = 600.0;
                        phpColor = Colors.green;
                        rectColor = Colors.red;
                        flutterColor = Colors.yellow;
                        fontLanguage = 22.0;
                        isStart = false;
                      });
                    },
                    child: const Text(
                      'End',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

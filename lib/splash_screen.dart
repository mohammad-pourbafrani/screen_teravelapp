import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screen_specifications_teravel/gen/assets.gen.dart';
import 'package:screen_specifications_teravel/my_colors.dart';
import 'package:screen_specifications_teravel/my_string.dart';

import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(
    //   SystemUiMode.manual,
    //   overlays: [
    //     SystemUiOverlay.bottom, // Shows Status bar and hides Navigation bar
    //   ],
    // );
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textThem = Theme.of(context).textTheme;
    bool _cheack = false;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.images.backgrondSplashScreen,
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding:
                EdgeInsets.fromLTRB(0, size.height / 8, 0, size.height / 8),
            child: Column(
              children: [
                Text(
                  MyString.textWellcomSplashScreenLine1,
                  style: textThem.headline1,
                ),
                Text(
                  MyString.textWellcomSplashScreenLine2,
                  style: textThem.headline1,
                ),
                Text(
                  MyString.subtextWellcomSplashScreen,
                  style: textThem.subtitle1,
                ),
                SizedBox(
                  height: size.height / 5,
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width / 5,
                      height: size.height / 3.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(125),
                        gradient: const LinearGradient(
                          colors: GradientColors.gradientdraggablesplashscreen,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 100,
                      left: 18,
                      child: ImageIcon(
                        Assets.icons.group12517,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                        width: size.width / 5,
                        height: size.height / 3.5,
                        child: Column(
                          children: [
                            DragTarget(
                              builder: (context, candidateData, rejectedData) {
                                return Container(
                                  width: size.width / 6,
                                  height: size.height / 10.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1000),
                                    // color: SolidColors.draggablesplashscreen,
                                  ),
                                );
                              },
                              onAccept: (data) {
                                setState(() {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const MainScreen()));
                                });
                              },
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Draggable(
                              data: _cheack,
                              axis: Axis.vertical,
                              child: Container(
                                width: size.width / 6,
                                height: size.height / 10.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1000),
                                  color: SolidColors.draggablesplashscreen,
                                ),
                                child: const Center(
                                  child: Text(
                                    "Go",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                              ),
                              feedback: Container(
                                width: size.width / 5.7,
                                height: size.height / 10.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1000),
                                  color: SolidColors.draggablesplashscreen,
                                ),
                                child: const Center(
                                  child: Text(""),
                                ),
                              ),
                              childWhenDragging: Container(
                                width: size.width / 6,
                                height: size.height / 10.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1000),
                                  // color: SolidColors.draggablesplashscreen,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

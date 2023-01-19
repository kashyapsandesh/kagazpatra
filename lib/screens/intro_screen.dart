import '../components/constants/const.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: body,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Logo(),
                  20.heightBox,
                  Row(
                    children: [
                      IconBox(
                        iconbackColor: iconbox,
                        textSize: 16,
                        height: 120,
                        width: 120,
                        icon: const Image(
                          image: AssetImage(
                            'assets/icons/home.png',
                          ),
                        ),
                        iconText: house,
                        onPress: () {},
                      ),
                      60.widthBox,
                      IconBox(
                        iconbackColor: iconbox,
                        textSize: 16,
                        height: 120,
                        width: 120,
                        icon: const Image(
                          image: AssetImage(
                            'assets/icons/business.png',
                          ),
                        ),
                        iconText: byapar,
                        onPress: () {},
                      )
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      IconBox(
                        iconbackColor: iconbox,
                        textSize: 16,
                        height: 120,
                        width: 120,
                        icon: const Image(
                          image: AssetImage(
                            'assets/icons/case.png',
                          ),
                        ),
                        iconText: muddha,
                        onPress: () {},
                      ),
                      60.widthBox,
                      IconBox(
                        iconbackColor: iconbox,
                        textSize: 16,
                        height: 120,
                        width: 120,
                        icon: const Image(
                          image: AssetImage(
                            'assets/icons/map.png',
                          ),
                        ),
                        iconText: napi,
                        onPress: () {},
                      )
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      IconBox(
                        iconbackColor: iconbox,
                        textSize: 16,
                        height: 120,
                        width: 120,
                        icon: const Image(
                          image: AssetImage(
                            'assets/icons/plane.png',
                          ),
                        ),
                        iconText: education,
                        onPress: () {},
                      ),
                    ],
                    // ignore: prefer_const_constructors
                  ),
                  25.heightBox,
                  "कार्यालयको चिठी लेख्ने या मुद्धको उजुरी गर्न "
                      .text
                      .size(16)
                      .white
                      .fontWeight(FontWeight.w500)
                      .make(),
                  Spacer(),
                  CButton(
                      ctext: 'Continue',
                      onPress: () {
                        Get.to(
                          () => const RegisterScreen(),
                          transition: Transition.upToDown,
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

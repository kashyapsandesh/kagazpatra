import '../components/constants/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: body,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: AppBarSet(),
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconBox(
                        iconbackColor: iconbox,
                        textSize: 12,
                        height: 110,
                        width: 110,
                        icon: const Image(
                          image: AssetImage(
                            'assets/icons/home.png',
                          ),
                        ),
                        iconText: house,
                        onPress: () {
                          Get.to(
                            () => const MalpotScreen(),
                            transition: Transition.upToDown,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconBox(
                        iconbackColor: iconbox,
                        textSize: 12,
                        height: 110,
                        width: 110,
                        icon: const Image(
                          image: AssetImage(
                            'assets/icons/business.png',
                          ),
                        ),
                        iconText: byapar,
                        onPress: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconBox(
                        iconbackColor: iconbox,
                        textSize: 12,
                        height: 110,
                        width: 110,
                        icon: const Image(
                          image: AssetImage(
                            'assets/icons/case.png',
                          ),
                        ),
                        iconText: muddha,
                        onPress: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //second row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconBox(
                        iconbackColor: iconbox,
                        textSize: 12,
                        height: 110,
                        width: 110,
                        icon: const Image(
                          image: AssetImage(
                            'assets/icons/map.png',
                          ),
                        ),
                        iconText: napi,
                        onPress: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconBox(
                        iconbackColor: iconbox,
                        textSize: 12,
                        height: 110,
                        width: 110,
                        icon: const Image(
                          image: AssetImage(
                            'assets/icons/plane.png',
                          ),
                        ),
                        iconText: education,
                        onPress: () {
                          Get.to(
                            () => const AbroadStudy(),
                            transition: Transition.upToDown,
                          );
                        },
                      ),
                    ),
                    //next
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconBox(
                        iconbackColor: iconbox,
                        textSize: 12,
                        height: 110,
                        width: 110,
                        icon: const Image(
                          image: AssetImage(
                            'assets/icons/ward.png',
                          ),
                        ),
                        iconText: ward,
                        onPress: () {
                          Get.to(
                            () => const AbroadStudy(),
                            transition: Transition.upToDown,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

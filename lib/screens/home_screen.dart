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
                        textSize: 12,
                        height: 110,
                        width: 110,
                        icon: const Image(
                          image: AssetImage(
                            'assets/icons/home.png',
                          ),
                        ),
                        iconText: house,
                        onPress: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconBox(
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
          ],
        ),
      ),
    );
  }
}

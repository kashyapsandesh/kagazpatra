import "../../components/constants/const.dart";

class MalpotScreen extends StatelessWidget {
  const MalpotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: body,
      body: SafeArea(
        child: Column(
          children: [
            AppBarSet(),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: iconbox, borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          15.widthBox,
                          Image.asset("assets/icons/home.png"),
                          20.widthBox,
                          house.text.xl
                              .size(30)
                              .bold
                              .color(Color(0xFF009587))
                              .make()
                              .p1()
                              .marginOnly(top: 10),
                          30.widthBox,
                          ElevatedButton.icon(
                            onPressed: () {
                              Get.back();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent, // Background color
                            ),
                            icon: Icon(Icons.backspace_sharp),
                            label: Text("Back"),
                          ),
                        ],
                      ),
                    ),
                    //row icons
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconBox(
                                    iconbackColor: insideIconbox,
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
                                    iconbackColor: insideIconbox,
                                    textSize: 12,
                                    height: 110,
                                    width: 110,
                                    icon: const Image(
                                      image: AssetImage(
                                        'assets/icons/plane.png',
                                      ),
                                    ),
                                    iconText: education,
                                    onPress: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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

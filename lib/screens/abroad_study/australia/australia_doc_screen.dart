import '../../../components/constants/const.dart';

class AustraliaDoc extends StatelessWidget {
  const AustraliaDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: body,
      body: SafeArea(
        child: Column(
          children: [
            const AppBarSet(),
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
                          Image.asset("assets/icons/city.png"),
                          20.widthBox,
                          australia.text.xl
                              .size(18)
                              .bold
                              .color(const Color(0xFF009587))
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
                            icon: const Icon(Icons.backspace_sharp),
                            label: const Text("Back"),
                          ),
                        ],
                      ),
                    ),
                    //row icons
                    Column(
                      children: [
                        TileData(
                            tiletext: "Financial Document",
                            tileImage: Image.asset("assets/icons/money.png"),
                            onPress: () {}),
                        TileData(
                            tiletext: "Ward Document",
                            tileImage: Image.asset("assets/icons/money.png"),
                            onPress: () {}),
                        TileData(
                            tiletext: "Work Experience",
                            tileImage: Image.asset("assets/icons/money.png"),
                            onPress: () {}),
                        TileData(
                            tiletext: "Notry Document",
                            tileImage: Image.asset("assets/icons/money.png"),
                            onPress: () {}),
                        TileData(
                            tiletext: "Property Valuation",
                            tileImage: Image.asset("assets/icons/money.png"),
                            onPress: () {}),
                        TileData(
                            tiletext: "Bank Loan",
                            tileImage: Image.asset("assets/icons/money.png"),
                            onPress: () {})
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

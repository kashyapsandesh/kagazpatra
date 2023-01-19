import 'const.dart';

class AppBarSet extends StatefulWidget {
  const AppBarSet({super.key});

  @override
  State<AppBarSet> createState() => _AppBarSetState();
}

class _AppBarSetState extends State<AppBarSet> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        height: 160,
        decoration: BoxDecoration(
            color: round,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    30.heightBox,
                    MiniLogo(),
                    160.widthBox,
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: iconbox,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ],
                ),
              ),
              5.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 25,
                    child: Text(
                      user.email!,
                      style: TextStyle(
                          color: iconbox,
                          fontSize: 12,
                          fontFamily: "mont_bold"),
                    ),
                  ),
                  10.widthBox,
                  ElevatedButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        Get.to(
                          () => const SplashScreen(),
                          transition: Transition.upToDown,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent, // Background color
                      ),
                      child: Text("Sign out"))
                ],
              ),
            ],
          ),
        ),
      )
    ]);
  }
}

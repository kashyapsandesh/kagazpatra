import 'const.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          fname.text.size(30).white.fontFamily("mont_bold").make(),
          5.widthBox,
          lname.text
              .size(30)
              .color(const Color(0xff374046))
              .fontFamily("mont_bold")
              .make(),
        ]);
  }
}

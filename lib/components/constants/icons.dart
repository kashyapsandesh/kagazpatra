import 'const.dart';

class IconBox extends StatelessWidget {
  final String iconText;
  final Image icon;
  final VoidCallback onPress;
  const IconBox(
      {super.key,
      required this.iconText,
      required this.icon,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
            color: iconbox, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Wrap(children: [
            Column(
              children: [
                Center(
                  child: icon,
                ),
                20.heightBox,
                iconText.text
                    .size(16)
                    .color(Color(0xFF009587))
                    .fontWeight(FontWeight.w500)
                    .make()
                    .centered(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

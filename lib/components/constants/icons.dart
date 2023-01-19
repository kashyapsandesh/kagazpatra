import 'const.dart';

class IconBox extends StatelessWidget {
  final String iconText;
  final Image icon;
  final VoidCallback onPress;
  final double height;
  final double width;
  final double textSize;
  final Color iconbackColor;
  const IconBox(
      {super.key,
      required this.iconText,
      required this.icon,
      required this.onPress,
      required this.height,
      required this.width,
      required this.textSize, required this.iconbackColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: iconbackColor, borderRadius: BorderRadius.circular(12)),
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
                    .size(textSize)
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

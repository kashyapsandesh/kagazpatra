import 'const.dart';

class TileData extends StatelessWidget {
  final String tiletext;
  final Image tileImage;
  final VoidCallback onPress;
  const TileData(
      {super.key,
      required this.tiletext,
      required this.tileImage,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: insideIconbox,
            borderRadius: BorderRadius.circular(14),
          ),
          width: double.infinity,
          height: 50,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: tileImage,
                ),
              ),
              10.widthBox,
              tiletext.text.size(18).make(),
            ],
          ),
        ),
      ),
    );
  }
}

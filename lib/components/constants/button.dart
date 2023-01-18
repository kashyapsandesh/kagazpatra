import 'const.dart';

class CButton extends StatelessWidget {
  final String ctext;
  final VoidCallback onPress;
  const CButton({super.key, required this.ctext, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: onPress,
            child: ctext.text.size(22).fontFamily("mont_semi").make(),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Color(0xff374046),
            ),
          )),
    );
  }
}

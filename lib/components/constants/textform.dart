import 'const.dart';

class CTextForm extends StatelessWidget {
  final String hint;
  const CTextForm({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hint,
          filled: true,
          hintStyle: TextStyle(color: Color(0xff374046)),
          fillColor: iconbox,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusColor: Colors.white),
    );
  }
}

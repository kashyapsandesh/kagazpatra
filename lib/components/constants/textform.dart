import 'const.dart';

class CTextForm extends StatelessWidget {
  final String hintText;
  final TextEditingController myController;
  final bool? isPassword;
  CTextForm(
      {super.key,
      required this.hintText,
      required this.myController,
      this.isPassword});

  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: isPassword!
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
      enableSuggestions: isPassword! ? false : true,
      autocorrect: isPassword! ? false : true,
      obscureText: isPassword ?? true,
      controller: myController,
      decoration: InputDecoration(
          hintText: hintText,
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

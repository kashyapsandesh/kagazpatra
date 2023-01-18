import '../components/constants/const.dart';
import '../components/constants/textform.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: body,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Logo(),
              70.heightBox,
              login.text.size(20).white.fontFamily("mont_bold").make(),
              25.heightBox,
              Container(
                child: Column(
                  children: [
                    CTextForm(hint: "Enter your email"),
                    10.heightBox,
                    CTextForm(hint: "Enter your password"),
                    10.heightBox,
                    CButton(ctext: "Login", onPress: () {}),
                    10.heightBox,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

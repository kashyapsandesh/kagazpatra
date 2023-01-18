import '../components/constants/const.dart';
import '../components/constants/textform.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              register.text.size(20).white.fontFamily("mont_bold").make(),
              25.heightBox,
              Container(
                child: Column(
                  children: [
                    CTextForm(hint: "Enter your name"),
                    10.heightBox,
                    CTextForm(hint: "Enter your email"),
                    10.heightBox,
                    CTextForm(hint: "Enter your password"),
                    10.heightBox,
                    CTextForm(hint: "Re-enter your password"),
                    10.heightBox,
                    CButton(ctext: "Register", onPress: () {}),
                    10.heightBox,
                  ],
                ),
              ),
              Container(
                child: SizedBox(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        account.text.white.size(18).make(),
                      ],
                    ),
                    3.widthBox,
                    TextButton(
                        onPressed: () {
                          Get.to(
                            () => const LoginScreen(),
                            transition: Transition.upToDown,
                          );
                        },
                        child: login.text.size(18).amber500.make())
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

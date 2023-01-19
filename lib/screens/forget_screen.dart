import 'package:flutter/cupertino.dart';

import '../components/constants/const.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  final TextEditingController _emailController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: body,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            CupertinoIcons.back,
                            color: iconbox,
                            size: 30,
                          )),
                    ],
                  ),
                  .5.heightBox,
                  Logo(),
                  30.heightBox,
                  Image.asset("assets/icons/forget2.png"),
                  forgetpass.text
                      .size(23)
                      .fontFamily("mont_bold")
                      .color(Color(0xff374046))
                      .make(),
                  20.heightBox,
                  CTextForm(
                    isPassword: false,
                    hintText: 'Enter your email',
                    myController: _emailController,
                  ),
                  20.heightBox,
                  CButton(
                    ctext: "Reset Password",
                    onPress: () async {
                      try {
                        await FirebaseAuthService().passwordReset(
                          _emailController.text.trim(),
                        );
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(
                                  "Reset link has been send to your email. Please check to reset!"),
                            );
                          },
                        );
                      } on FirebaseAuthException catch (e) {
                        print(e.message);

                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(e.message.toString()),
                            );
                          },
                        );
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

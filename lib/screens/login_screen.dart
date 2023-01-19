import '../components/constants/const.dart';
import '../components/constants/textform.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //textcontrollers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: body,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
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
                      CTextForm(
                        isPassword: false,
                        hintText: 'Enter your email',
                        myController: _emailController,
                      ),
                      10.heightBox,
                      CTextForm(
                        isPassword: true,
                        hintText: 'Enter your password',
                        myController: _passwordController,
                      ),
                      10.heightBox,
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Get.to(
                              () => const ForgetScreen(),
                              transition: Transition.upToDown,
                            );
                          },
                          child: forget.text.color(Color(0xff374046)).make(),
                        ),
                      ),
                      10.heightBox,
                      CButton(
                        ctext: "Login",
                        onPress: () async {
                          try {
                            await FirebaseAuthService().login(
                                _emailController.text.trim(),
                                _passwordController.text.trim());
                            if (FirebaseAuth.instance.currentUser != null) {
                              Get.to(
                                () => HomePage(),
                                transition: Transition.upToDown,
                              );
                            } else {}
                          } on FirebaseAuthException catch (e) {
                            print(e.message);
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(
                                    'Invalid UserName and password. Please register again or make sure that username and password is correct.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Get.to(
                                        () => const RegisterScreen(),
                                        transition: Transition.upToDown,
                                      );
                                    },
                                    child: Text('Register Now'),
                                  )
                                ],
                              ),
                            );
                          }
                        },
                      ),
                      10.heightBox,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

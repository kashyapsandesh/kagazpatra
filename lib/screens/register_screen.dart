import '../components/constants/const.dart';
import '../components/constants/textform.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
                register.text.size(20).white.fontFamily("mont_bold").make(),
                25.heightBox,
                Container(
                  child: Column(
                    children: [
                      CTextForm(
                        isPassword: false,
                        hintText: 'Username',
                        myController: _usernameController,
                      ),
                      10.heightBox,
                      CTextForm(
                        isPassword: false,
                        hintText: 'Email',
                        myController: _emailController,
                      ),
                      10.heightBox,
                      CTextForm(
                        isPassword: true,
                        hintText: 'Password',
                        myController: _passwordController,
                      ),
                      10.heightBox,
                      CTextForm(
                        isPassword: true,
                        hintText: 'Confirm Password',
                        myController: _confirmPasswordController,
                      ),
                      10.heightBox,
                      CButton(
                          ctext: "Register",
                          onPress: () async {
                            try {
                              await FirebaseAuthService().signup(
                                  _emailController.text.trim(),
                                  _passwordController.text.trim());
                              Get.to(
                                () => const LoginScreen(),
                                transition: Transition.upToDown,
                              );
                            } on FirebaseException catch (e) {
                              print(e.message);
                            }
                          }),
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
      ),
    );
  }
}

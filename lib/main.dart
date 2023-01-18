import 'package:get/get.dart';

import './components/constants/const.dart';

void main() {
  runApp(const KagazPatra());
}

class KagazPatra extends StatelessWidget {
  const KagazPatra({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

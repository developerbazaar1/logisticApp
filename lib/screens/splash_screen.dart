import 'package:logistic/res/comman/app_text.dart';
import 'package:logistic/utils/barrel.dart';

import '../features/auth/screens/signin_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: height * 0.65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(width * 0.08),
                  bottomRight: Radius.circular(width * 0.08),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    LogisticImages.splash,
                  ),
                  fit: BoxFit.fitWidth,
                )),
          ),
          SizedBox(height: height * 0.03),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                children: [
                  MyTextPoppines(
                    text: 'Your Logistic Partner For Seamless Delivery',
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                  SizedBox(height: height * 0.016),
                  MyTextPoppines(
                    text:
                        'Streamline Your Transportation Processes Effortlessly',
                    fontSize: width * 0.04,
                    color: Colors.black.withOpacity(0.5),
                    height: 1.4,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ),
                      );
                    },
                    child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: height * 0.02),
                        margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                        decoration: const BoxDecoration(
                          color: LogisticColors.buttonBlack,
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        child: MyTextPoppines(
                          text: "Get Started",
                          color: LogisticColors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.045,
                        )),
                  ),
                  SizedBox(height: height * 0.03)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

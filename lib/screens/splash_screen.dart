import 'package:logistic/utils/barrel.dart';

import 'signin_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            LogisticImages.splash,
            fit: BoxFit.fitWidth,
            width: double.maxFinite,
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
            child: Text(
              'Your Logistic Partner For Seamless Delivery',
              style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: LogisticColors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
            child: Text(
              'Streamline Your Transportation Processes Effortlessly',
              style: TextStyle(fontSize: 18.sp, color: LogisticColors.black),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignInScreen()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 52.h,
              margin: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 18.h),
              decoration: const BoxDecoration(
                  color: LogisticColors.black,
                  borderRadius: BorderRadius.all(Radius.circular(32))),
              child: Text(
                "Get Started",
                style: TextStyle(
                    color: LogisticColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

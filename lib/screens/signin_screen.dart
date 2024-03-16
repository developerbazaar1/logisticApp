import 'package:flutter/gestures.dart';
import 'package:logistic/screens/bottom_navigation_screen.dart';
import 'package:logistic/utils/barrel.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  ValueNotifier<bool> isForgotSectionVisibleSection =
      ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            LogisticImages.darkSplash,
            height: 450.h,
            fit: BoxFit.fill,
            width: double.maxFinite,
          ),
          ValueListenableBuilder<bool>(
              valueListenable: isForgotSectionVisibleSection,
              builder: (context, isForgotSectionVisible, _) {
                if (isForgotSectionVisible) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 28.0.w),
                        child: GestureDetector(
                          onTap: () {
                            isForgotSectionVisibleSection.value = false;
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.arrow_back,
                                color: LogisticColors.white,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: LogisticColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.0.w),
                        child: Text(
                          "Forgot Your Password?",
                          style: TextStyle(
                              fontSize: 28.sp,
                              color: LogisticColors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.0.w),
                        child: Text(
                          "Enter Your Email to Reset Your Password",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: LogisticColors.lightBlack),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Container(
                        height: 154.h,
                        margin: EdgeInsets.symmetric(horizontal: 18.sp),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: LogisticColors.primary,
                            borderRadius: BorderRadius.circular(32)),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 300.w,
                          height: 52.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: LogisticColors.black,
                              borderRadius: BorderRadius.circular(32)),
                          child: Text('Submit',
                              style: TextStyle(
                                color: LogisticColors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 68.h,
                      )
                    ],
                  );
                } else {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 28.0.w),
                        child: Text(
                          "Welcome Back!",
                          style: TextStyle(
                              fontSize: 28.sp,
                              color: LogisticColors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.0.w),
                        child: Text(
                          "Sign in to Continue Managing Your\nLogistics Effortlessly",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: LogisticColors.lightBlack),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 18.sp),
                        width: double.maxFinite,
                        height: 200.h,
                        decoration: BoxDecoration(
                            color: LogisticColors.primary,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) =>
                                        const BottomNavigationScreen()));
                          },
                          child: Container(
                            width: 300.w,
                            height: 52.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: LogisticColors.black,
                                borderRadius: BorderRadius.circular(32)),
                            child: Text('Sign In',
                                style: TextStyle(
                                  color: LogisticColors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.sp),
                        child: RichText(
                            text: TextSpan(
                                text: "Don't remember your password?",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: LogisticColors.black),
                                children: [
                              TextSpan(
                                text: ' Forgot Password',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    isForgotSectionVisibleSection.value = true;
                                  },
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: LogisticColors.primary),
                              )
                            ])),
                      ),
                      SizedBox(
                        height: 20.h,
                      )
                    ],
                  );
                }
              })
        ],
      ),
    );
  }
}

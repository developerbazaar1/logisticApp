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
            height: 480.h,
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
                        padding: const EdgeInsets.all(16.0),
                        height: 154.h,
                        margin: EdgeInsets.symmetric(horizontal: 18.sp),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: LogisticColors.primary,
                          borderRadius: BorderRadius.circular(32),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'lib/assets/images/background.png')),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Secure Sign In – Enter Your Details",
                              // style: TextStyle(
                              //   fontSize: 17.sp,
                              //   color: LogisticColors.black,
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        // width: 15,
                                        // height: 15,
                                        // color: Colors.black,
                                        ),
                                    // const DottedLine(
                                    //   direction: Axis.vertical,
                                    //   lineLength: 60,
                                    //   dashLength: 6.0,
                                    //   dashRadius: 0.8,
                                    //   dashGapLength: 3.0,
                                    //   dashGapRadius: 0.6,
                                    // ),

                                    // const Icon(
                                    //   Icons.arrow_drop_down_rounded,
                                    // ),
                                    const CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.black,
                                    )
                                  ],
                                ),
                                const SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Email Address:',
                                      style: TextStyle(
                                          color: LogisticColors.white,
                                          fontSize: 16.sp),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    SizedBox(
                                      height: 40.h,
                                      width: 260.w,
                                      child: TextFormField(
                                        cursorColor: LogisticColors.white,
                                        decoration: InputDecoration(
                                          hintText: "dummy@login.com",
                                          hintStyle: const TextStyle(
                                              color: LogisticColors.white),
                                          fillColor: LogisticColors.white
                                              .withOpacity(0.5),
                                          filled: true,
                                          border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
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
                        padding: const EdgeInsets.all(16.0),
                        margin: EdgeInsets.symmetric(horizontal: 18.sp),
                        width: 361.w,
                        height: 240.h,
                        decoration: BoxDecoration(
                          color: LogisticColors.primary,
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'lib/assets/images/background.png')),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                "Secure Sign In – Enter Your Details",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: LogisticColors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'Email Address:',
                              style: TextStyle(
                                  color: LogisticColors.white, fontSize: 16.sp),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              height: 40.h,
                              width: 290.w,
                              child: TextFormField(
                                cursorColor: LogisticColors.white,
                                decoration: InputDecoration(
                                  hintText: "dummy@login.com",
                                  hintStyle: const TextStyle(
                                      color: LogisticColors.white),
                                  fillColor:
                                      LogisticColors.white.withOpacity(0.5),
                                  filled: true,
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'Password',
                              style: TextStyle(
                                  color: LogisticColors.white, fontSize: 16.sp),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              height: 40.h,
                              width: 290.w,
                              child: TextFormField(
                                cursorColor: LogisticColors.white,
                                decoration: InputDecoration(
                                  hintText: "✱✱✱✱✱✱✱✱",
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(
                                        'lib/assets/images/Vector1.png'),
                                  ),
                                  hintStyle: const TextStyle(
                                      color: LogisticColors.white),
                                  fillColor:
                                      LogisticColors.white.withOpacity(0.5),
                                  filled: true,
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                      // SizedBox(
                      //   height: 20.h,
                      // )
                    ],
                  );
                }
              })
        ],
      ),
    );
  }
}

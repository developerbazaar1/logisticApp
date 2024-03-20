import 'package:flutter/gestures.dart';
import 'package:logistic/res/comman/app_text.dart';
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
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Stack(
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
                    LogisticImages.darkSplash,
                  ),
                  fit: BoxFit.fitWidth,
                )),
          ),
          ValueListenableBuilder<bool>(
              valueListenable: isForgotSectionVisibleSection,
              builder: (context, isForgotSectionVisible, _) {
                if (isForgotSectionVisible) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          isForgotSectionVisibleSection.value = false;
                        },

                        // forgot password section starts
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
                            MyTextPoppines(
                              text: 'Back',
                              fontSize: width * 0.03,
                              color: Colors.white.withOpacity(0.5),
                              height: 1.0,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 6.h,
                      ),
                      // 1st headline of forgot section starts here

                      MyTextPoppines(
                        text: 'Forgot Your Password?',
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.6,
                      ),

                      // ends here

                      SizedBox(
                        height: 10.h,
                      ),

                      // 2st headline of forgot section starts here

                      MyTextPoppines(
                        text: 'Enter Your Email to Reset Your Password',
                        fontSize: width * 0.04,
                        color: Colors.white.withOpacity(0.5),
                        height: 1.4,
                      ),

                      // ends here

                      SizedBox(
                        height: 25.h,
                      ),

                      Container(
                        padding: const EdgeInsets.all(16.0),
                        margin: EdgeInsets.symmetric(horizontal: 18.sp),
                        height: 154,
                        width: 361,
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
                            MyTextPoppines(
                              text: 'Secure Sign In – Enter Your Details',
                              fontSize: width * 0.039,
                              fontWeight: FontWeight.bold,
                              height: 2.0,
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 7.5,
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
                        height: 70.h,
                      ),
                      // SizedBox(height: height * 0.08),
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const HomeScreen(),
                            //   ),
                            // );
                          },
                          child: Container(
                              alignment: Alignment.center,
                              padding:
                                  EdgeInsets.symmetric(vertical: height * 0.02),
                              margin: EdgeInsets.symmetric(
                                  horizontal: width * 0.10),
                              decoration: const BoxDecoration(
                                color: LogisticColors.buttonBlack,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(32),
                                ),
                              ),
                              child: MyTextPoppines(
                                text: "Submit",
                                color: LogisticColors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: width * 0.045,
                              )),
                        ),
                      ),
                      // SizedBox(
                      //   height: 68.h,
                      // )
                      SizedBox(height: height * 0.12)
                    ],
                  );
                  // forgot your password section ends here!
                } else {
                  // SignIN Section Starts Here!
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyTextPoppines(
                          text: 'Welcome Back!',
                          fontSize: width * 0.06,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                        SizedBox(height: height * 0.016),
                        MyTextPoppines(
                          text:
                              'Sign in to Continue Managing Your\nLogistics Effortlessly',
                          fontSize: width * 0.04,
                          color: Colors.white.withOpacity(0.5),
                          height: 1.4,
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          margin: EdgeInsets.symmetric(horizontal: 18.sp),
                          width: 361.w,
                          height: 240.h,
                          // width: width * 0.361,
                          // height: height *  0.240,
                          decoration: BoxDecoration(
                            color: LogisticColors.primary,
                            borderRadius: BorderRadius.circular(32),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'lib/assets/images/background.png')),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.06),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyTextPoppines(
                                  text: 'Secure Sign In – Enter Your Details',
                                  fontSize: width * 0.039,
                                  fontWeight: FontWeight.bold,
                                  height: 2.0,
                                ),
                                SizedBox(height: height * 0.016),
                                // Row(
                                //children: [
                                //const Column(
                                //children: [
                                // Container(
                                //   width: 10,
                                //   height: 10,
                                //   color: Colors.black,
                                // ),
                                // const DottedLine(
                                //   direction: Axis.vertical,
                                //   lineLength: 60,
                                //   dashLength: 6.0,
                                //   dashRadius: 0.8,
                                //   dashGapLength: 3.0,
                                //   dashGapRadius: 0.6,
                                // ),

                                // Icon(
                                //   Icons.arrow_drop_down_rounded,
                                // ),
                                // CircleAvatar(
                                //   radius: 9,
                                //   backgroundColor: Colors.black,
                                // )
                                //],
                                //),
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
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      'Password',
                                      style: TextStyle(
                                          color: LogisticColors.white,
                                          fontSize: 16.sp),
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
                              //),Row
                              //], childern
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.04),
                        Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const BottomNavigationScreen(),
                                ),
                              );
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 0.02),
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.04),
                                decoration: const BoxDecoration(
                                  color: LogisticColors.buttonBlack,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(32),
                                  ),
                                ),
                                child: MyTextPoppines(
                                  text: "Sign In",
                                  color: LogisticColors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.045,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.05),
                          child: RichText(
                            text: TextSpan(
                              text: "Don't remember your password?",
                              style: TextStyle(
                                  fontSize: 16.sp, color: LogisticColors.black),
                              children: [
                                TextSpan(
                                  text: ' Forgot Password',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      isForgotSectionVisibleSection.value =
                                          true;
                                    },
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: LogisticColors.primary),
                                ),
                              ],
                            ),
                          ),
                          //     MyTextPoppines(
                          //   text: "Don't remember your password?",
                          //   fontSize: width * 0.06,
                          //   // fontWeight: FontWeight.bold,
                          //   height: 1.0,
                          // ),
                        ),
                        SizedBox(height: height * 0.02)
                      ],
                    ),
                  );
                }
              })
        ],
      ),
    );
  }
}

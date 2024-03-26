import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logistic/features/auth/screens/forgotpassword.dart';
import 'package:logistic/res/comman/app_text.dart';
import 'package:logistic/screens/bottom_navigation_screen.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/MyTextField.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
        body: Stack(children: [
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
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.06),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Text
            MyTextTitillium(
              text: 'Welcome Back!',
              fontSize: width * 0.075,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              height: height * 0.001,
            ),
            SizedBox(height: height * 0.014),

            MyTextTitillium(
              text: 'Sign in to Continue Managing Your\nLogistics Effortlessly',
              fontSize: width * 0.044,
              color: Colors.white.withOpacity(0.8),
              height: height * 0.0016,
            ),
            SizedBox(height: height * 0.036),
            //  Sign In Container
            Container(
              // height: height *  0.240,
              decoration: BoxDecoration(
                color: LogisticColors.primary,
                borderRadius: BorderRadius.circular(23),
                image: const DecorationImage(
                  image: AssetImage('lib/assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.038,
                  vertical: height * 0.03,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextTitillium(
                      text: ' Secure Sign In – Enter Your Details',
                      fontSize: width * 0.048,
                      fontWeight: FontWeight.bold,
                      height: height * 0.001,
                    ),
                    SizedBox(height: height * 0.016),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: height * 0.016),
                            Container(
                              width: width * 0.033,
                              height: height * 0.016,
                              color: Colors.black,
                            ),
                            const DottedLine(
                              direction: Axis.vertical,
                              lineLength: 70,
                              dashLength: 4.0,
                              dashRadius: 1.0,
                              dashGapLength: 4.0,
                              dashGapRadius: 0.6,
                            ),
                            const CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.black,
                            )
                          ],
                        ),
                        SizedBox(width: width * 0.03),
                        // email and password text fields
                        Expanded(
                          child: Column(
                            children: [
                              MyTextFeild(
                                  controller: c,
                                  headingText: "Email Address:",
                                  hintText: "dummy@login.com"),
                              SizedBox(
                                height: 9.h,
                              ),
                              MyTextFeild(
                                  controller: c,
                                  headingText: "Password",
                                  hintText: "✱✱✱✱✱✱✱✱",
                                  img: 'lib/assets/images/Vector1.png'),
                            ],
                          ),
                        ),
                        // Email and password text field ends
                      ], //children
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            // sign in button
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavigationScreen(),
                    ),
                  );
                },
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: height * 0.02),
                    margin: EdgeInsets.symmetric(horizontal: width * 0.06),
                    decoration: const BoxDecoration(
                      color: LogisticColors.buttonBlack,
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                    ),
                    child: MyTextTitillium(
                      text: "Sign In",
                      color: LogisticColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.045,
                    )),
              ),
            ),
            // sign in button ends here
            SizedBox(
              height: height * 0.02,
            ),

            // forgot password section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.01),
              child: RichText(
                text: TextSpan(
                  text: "Don't remember your password?",
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '   Forgot Password',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetPassword()),
                          );
                        },
                      style: GoogleFonts.titilliumWeb(
                        fontSize: 13,
                        color: LogisticColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: height * 0.02)
          ],
        ),
      )
    ]));
  }
}

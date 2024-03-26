import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logistic/features/auth/screens/signin_screen.dart';
import 'package:logistic/res/comman/app_text.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/MyTextField.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController c = TextEditingController();
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.24),
                Row(
                  children: [
                    const Icon(
                      CupertinoIcons.arrow_left,
                      color: LogisticColors.white,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    MyTextTitillium(
                      text: 'Back',
                      fontSize: width * 0.03,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                // Forgot Password Text
                MyTextTitillium(
                  text: 'Forgot Your Password?',
                  fontSize: width * 0.075,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: height * 0.02),

                MyTextTitillium(
                  text: 'Enter Your Email to Reset Your Password',
                  fontSize: width * 0.040,
                  color: Colors.white.withOpacity(0.8),
                ),
                SizedBox(height: height * 0.06),
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
                                const CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.black,
                                )
                              ],
                            ),
                            SizedBox(width: width * 0.03),
                            //  password text fields
                            Expanded(
                              child: Column(
                                children: [
                                  MyTextFeild(
                                      controller: c,
                                      headingText: "Password",
                                      hintText: "✱✱✱✱✱✱✱✱",
                                      img: 'lib/assets/images/Vector1.png'),
                                ],
                              ),
                            ),
                            //  password text field ends
                          ], //children
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
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
                        padding: EdgeInsets.symmetric(vertical: height * 0.02),
                        margin: EdgeInsets.symmetric(horizontal: width * 0.06),
                        decoration: const BoxDecoration(
                          color: LogisticColors.buttonBlack,
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            // Show dialog
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                // Return object of type Dialog
                                return AlertDialog(
                                  backgroundColor: Colors.white,
                                  title: Column(
                                    children: [
                                      Image.asset('lib/assets/gif/gif1.gif',
                                          width: 80, height: 82),
                                      SizedBox(height: height * 0.02),
                                      Text(
                                        "Forgot Password!",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                16, // Adjust font size as needed
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  content: Text(
                                    "Password reset instructions will be sent via email.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            12, // Adjust font size as needed
                                      ),
                                    ),
                                  ),
                                  actions: <Widget>[
                                    // Close button
                                    Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color:
                                              Colors.black, // Background color
                                          borderRadius: BorderRadius.circular(
                                              20), // Rounded corners
                                        ),
                                        child: TextButton(
                                          child: Text(
                                            "Back to Login",
                                            style: TextStyle(
                                              color: LogisticColors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: width * 0.036,
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SignInScreen()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: MyTextTitillium(
                            text: "Submit",
                            color: LogisticColors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.045,
                          ),
                        )),
                  ),
                ),
                // sign in button
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:google_fonts/google_fonts.dart';
import 'package:logistic/res/comman/app_text.dart';
import 'package:logistic/screens/bottom_navigation_screen.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/MyTextField.dart';

import '../widgets/header_card.dart';

class AddUserScreen extends StatelessWidget {
  TextEditingController c = TextEditingController();
  AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        flexibleSpace: const HeaderCard(),
        expandedHeight: height * 0.04,
        floating: false,
        pinned: true,
        automaticallyImplyLeading: false,
      ),
      SliverToBoxAdapter(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigationScreen(),
                          ));
                    },
                    child: const Icon(Icons.arrow_back_outlined)),
                SizedBox(
                  width: width * 0.08,
                ),
                Column(
                  children: [
                    Text(
                      'Add New User',
                      style: TextStyle(
                          fontSize: width * 0.06,
                          fontWeight: FontWeight.bold,
                          color: LogisticColors.black),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      'Enter Details to Create a New User',
                      style: TextStyle(
                          fontSize: 16.sp, color: LogisticColors.black),
                    ),
                  ],
                ),
                const SizedBox.shrink()
              ],
            ),
            SizedBox(height: height * 0.01),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              decoration: BoxDecoration(
                color: LogisticColors.primary,
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('lib/assets/images/background.png')),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: LogisticColors.white.withOpacity(0.5),
                              border: Border.all(color: LogisticColors.white),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: LogisticColors.white,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(top: 10, right: 10),
                            child: Icon(
                              Icons.edit,
                              color: LogisticColors.white,
                            ))
                      ],
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Column(
                  //       children: [
                  //         Container(
                  //           width: 10,
                  //           height: 10,
                  //           color: Colors.black,
                  //         ),
                  //         const DottedLine(
                  //           direction: Axis.vertical,
                  //           lineLength: 60,
                  //           dashLength: 6.0,
                  //           dashRadius: 0.8,
                  //           dashGapLength: 3.0,
                  //           dashGapRadius: 0.6,
                  //         ),
                  // const Icon(
                  //   Icons.arrow_drop_down_rounded,
                  // ),
                  //     const CircleAvatar(
                  //       radius: 9,
                  //       backgroundColor: Colors.black,
                  //     )
                  //   ],
                  // ),
                  SizedBox(
                    height: 4.h,
                  ),

                  MyTextFeild(
                      controller: c,
                      headingText: 'Username',
                      hintText: 'kulpatel_256'),
                  SizedBox(
                    height: 16.h,
                  ),
                  MyTextFeild(
                      controller: c,
                      headingText: 'Name',
                      hintText: 'Kuldeep Patel'),
                  SizedBox(
                    height: 16.h,
                  ),

                  MyTextFeild(
                    controller: c,
                    headingText: 'Email Address',
                    hintText: 'dummy@login.com',
                  ),

                  SizedBox(
                    height: 16.h,
                  ),

                  MyTextFeild(
                      controller: c,
                      headingText: 'Phone Number',
                      hintText: '+91 9876543210'),

                  SizedBox(
                    height: 16.h,
                  ),

                  SizedBox(
                    height: 16.h,
                  ),

                  MyTextFeild(
                    controller: c,
                    headingText: 'Department',
                    hintText: 'Operations',
                    img: 'lib/assets/images/Vector.png',
                  ),

                  SizedBox(
                    height: 16.h,
                  ),

                  MyTextFeild(
                    controller: c,
                    headingText: 'Responsibility',
                    hintText: 'Manager',
                    img: 'lib/assets/images/Vector.png',
                  ),

                  SizedBox(
                    height: 16.h,
                  ),
                  MyTextFeild(
                    controller: c,
                    headingText: 'Password',
                    hintText: '✱✱✱✱✱✱✱✱',
                    img: 'lib/assets/images/Vector1.png',
                  ),
                ],
                // ),//row
                // ],// children
              ),
            ),
            SizedBox(height: 10.h),
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
                    margin: EdgeInsets.symmetric(horizontal: width * 0.10),
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
                                  Image.asset('lib/assets/gif/gif4.gif',
                                      width: 150, height: 150),
                                  SizedBox(height: height * 0.00),
                                  Text(
                                    "New User Added Successfully!",
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            18, // Adjust font size as needed
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              content: const Text(
                                "Congratulations! You have successfully added a new user to the system. ",
                                style: TextStyle(color: Colors.black),
                              ),
                              actions: <Widget>[
                                // Close button
                                TextButton(
                                  child: const Text(
                                    "View Users",
                                    style:
                                        TextStyle(color: LogisticColors.black),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: MyTextPoppines(
                        text: "Save",
                        color: LogisticColors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: width * 0.045,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}

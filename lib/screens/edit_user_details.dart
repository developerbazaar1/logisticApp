import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logistic/res/comman/app_text.dart';
import 'package:logistic/screens/home_screen.dart';
import 'package:logistic/screens/view_user_screen.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/MyTextField.dart';
import 'package:logistic/widgets/header_card.dart';

class EditUserDetails extends StatelessWidget {
  TextEditingController c = TextEditingController();
  EditUserDetails({super.key});

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
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => const HomeScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_back)),
                SizedBox(
                  width: width * 0.15,
                ),
                const Text(
                  'Edit User Details',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: LogisticColors.black,
                  ),
                ),
                const SizedBox.shrink()
              ],
            ),
            SizedBox(
              height: height * 0.005,
            ),
            const Text(
              'Update user information',
              style: TextStyle(
                fontSize: 13,
                color: LogisticColors.black,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: width * 0.04),
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.04, vertical: height * 0.04),
              decoration: BoxDecoration(
                color: LogisticColors.yellow,
                borderRadius: BorderRadius.circular(23),
                image: const DecorationImage(
                  image: AssetImage('lib/assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: const Offset(0, 0),
                      blurRadius: 25)
                ],
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
                          const Icon(
                            CupertinoIcons.arrow_down,
                            size: 20,
                          ),
                          const DottedLine(
                            direction: Axis.vertical,
                            lineLength: 70,
                            dashLength: 4.0,
                            dashRadius: 1.0,
                            dashGapLength: 4.0,
                            dashGapRadius: 0.6,
                          ),
                          const Icon(
                            CupertinoIcons.arrow_down,
                            size: 20,
                          ),
                          const DottedLine(
                            direction: Axis.vertical,
                            lineLength: 70,
                            dashLength: 4.0,
                            dashRadius: 1.0,
                            dashGapLength: 4.0,
                            dashGapRadius: 0.6,
                          ),
                          const Icon(
                            CupertinoIcons.arrow_down,
                            size: 20,
                          ),
                          const DottedLine(
                            direction: Axis.vertical,
                            lineLength: 70,
                            dashLength: 4.0,
                            dashRadius: 1.0,
                            dashGapLength: 4.0,
                            dashGapRadius: 0.6,
                          ),
                          const Icon(
                            CupertinoIcons.arrow_down,
                            size: 20,
                          ),
                          const DottedLine(
                            direction: Axis.vertical,
                            lineLength: 70,
                            dashLength: 4.0,
                            dashRadius: 1.0,
                            dashGapLength: 4.0,
                            dashGapRadius: 0.6,
                          ),
                          // const Icon(
                          //   CupertinoIcons.arrow_down,
                          //   size: 20,
                          // ),
                          // const DottedLine(
                          //   direction: Axis.vertical,
                          //   lineLength: 70,
                          //   dashLength: 4.0,
                          //   dashRadius: 1.0,
                          //   dashGapLength: 4.0,
                          //   dashGapRadius: 0.6,
                          // ),
                          const CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.black,
                          )
                        ],
                      ),
                      SizedBox(width: width * 0.03),
                      Expanded(
                        child: Column(
                          children: [
                            MyTextFeild(
                                controller: c,
                                headingText: 'Username',
                                hintText: 'kulpatel_256'),
                            SizedBox(
                              height: height * 0.023,
                            ),
                            MyTextFeild(
                                controller: c,
                                headingText: 'Name',
                                hintText: 'Kuldeep Patel'),
                            SizedBox(
                              height: height * 0.023,
                            ),
                            MyTextFeild(
                              controller: c,
                              headingText: 'Email Address',
                              hintText: 'dummy@login.com',
                            ),
                            SizedBox(
                              height: height * 0.023,
                            ),
                            MyTextFeild(
                                controller: c,
                                headingText: 'Phone Number',
                                hintText: '+91 9876543210'),
                            SizedBox(
                              height: height * 0.023,
                            ),
                            // MyTextFeild(
                            //   controller: c,
                            //   headingText: 'Department',
                            //   hintText: 'Operations',
                            //   img: 'lib/assets/images/Vector.png',
                            // ),
                            // SizedBox(
                            //   height: height * 0.023,
                            // ),
                            MyTextFeild(
                              controller: c,
                              headingText: 'Responsibility',
                              hintText: 'Manager',
                              img: 'lib/assets/images/Vector.png',
                            ),
                            SizedBox(
                              height: height * 0.023,
                            ),
                            MyTextFeild(
                              controller: c,
                              headingText: 'Password',
                              hintText: '✱✱✱✱✱✱✱✱',
                              img: 'lib/assets/images/Vector1.png',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.04),
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
                    margin: EdgeInsets.symmetric(horizontal: width * 0.19),
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
                                      width: 200, height: 200),
                                  Text(
                                    "User Details Updated",
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
                                "You have successfully updated the details of the user.",
                                style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 13, // Adjust font size as needed
                                  ),
                                ),
                              ),
                              actions: <Widget>[
                                // Close button
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black, // Background color
                                      borderRadius: BorderRadius.circular(
                                          25), // Rounded corners
                                    ),
                                    child: TextButton(
                                      child: Text(
                                        "View Users",
                                        style: TextStyle(
                                          color: LogisticColors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: width * 0.045,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ViewUserScreen()),
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
                      child: MyTextPoppines(
                        text: "Save",
                        color: LogisticColors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: width * 0.045,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
          ],
        ),
      )
    ]));
  }
}

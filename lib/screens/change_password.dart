import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:logistic/screens/home_screen.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/MyTextField.dart';
import 'package:logistic/widgets/header_card.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({super.key});
  TextEditingController c = TextEditingController();

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
                  'Change Password',
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
              'Update Your Account Information',
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
                  SizedBox(height: height * 0.0040),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: height * 0.036),
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
                            SizedBox(
                              height: height * 0.023,
                            ),
                            MyTextFeild(
                              controller: c,
                              headingText: 'Enter Old Password',
                              hintText: '✱✱✱✱✱✱✱✱',
                              img: 'lib/assets/images/Vector1.png',
                            ),
                            SizedBox(
                              height: height * 0.023,
                            ),
                            MyTextFeild(
                              controller: c,
                              headingText: 'Enter New Password',
                              hintText: '✱✱✱✱✱✱✱✱',
                              img: 'lib/assets/images/Vector1.png',
                            ),
                            SizedBox(
                              height: height * 0.023,
                            ),
                            MyTextFeild(
                              controller: c,
                              headingText: 'Re-enter New Password',
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
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (builder) =>
                  //             const BottomNavigationScreen()));
                },
                child: Container(
                    width: 200.w,
                    height: 52.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: LogisticColors.black,
                        borderRadius: BorderRadius.circular(32)),
                    child: Text('Save',
                        style: TextStyle(
                          color: LogisticColors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ))),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
          ],
        ),
      ),
    ]));
  }
}

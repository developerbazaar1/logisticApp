import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/DepartmentTextField.dart';
import 'package:logistic/widgets/MyTextField.dart';
import 'package:logistic/widgets/PasswordTextField.dart';

import '../widgets/header_card.dart';

class AddUserScreen extends StatelessWidget {
  const AddUserScreen({super.key});

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
                    onTap: () {}, child: const Icon(Icons.arrow_back_outlined)),
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

                  customeTextField(width, height, 'Username', 'kulpatel_256'),
                  SizedBox(
                    height: 16.h,
                  ),
                  customeTextField(width, height, 'Name', 'Kuldeep Patel'),
                  SizedBox(
                    height: 16.h,
                  ),
                  customeTextField(
                      width, height, 'Email Address', 'dummy@login.com'),
                  SizedBox(
                    height: 16.h,
                  ),

                  customeTextField(
                      width, height, 'Phone Number', '+91 9876543210'),
                  SizedBox(
                    height: 16.h,
                  ),

                  SizedBox(
                    height: 16.h,
                  ),

                  DepartmentTextField(
                      width, height, 'Department', 'Operations'),

                  SizedBox(
                    height: 16.h,
                  ),

                  DepartmentTextField(
                      width, height, 'Responsibility', 'Manager'),

                  SizedBox(
                    height: 16.h,
                  ),
                  PasswordTextField(width, height, 'Password', '✱✱✱✱✱✱✱✱'),
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
            )
          ],
        ),
      ),
    ]));
  }
}

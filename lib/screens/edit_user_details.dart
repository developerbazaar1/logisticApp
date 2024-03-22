import 'package:logistic/res/comman/app_text.dart';
import 'package:logistic/screens/home_screen.dart';
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
        expandedHeight: 50.h,
        floating: false,
        pinned: true,
        automaticallyImplyLeading: false,
      ),
      SliverToBoxAdapter(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
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
                  width: 50.w,
                ),
                Text(
                  'Edit User Details',
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: LogisticColors.black),
                ),
                const SizedBox.shrink(),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Update user information',
              style: TextStyle(fontSize: 16.sp, color: LogisticColors.black),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              decoration: BoxDecoration(
                color: LogisticColors.yellow,
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
                      hintText: 'dummy@login.com'),
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
                              title: const Text(
                                "User Details Updated",
                                style: TextStyle(color: Colors.black),
                              ),
                              content: const Text(
                                "You have successfully updated the details of the user. ",
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
      )
    ]));
  }
}

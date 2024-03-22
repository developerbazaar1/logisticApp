import 'package:logistic/screens/home_screen.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/MyTextField.dart';

import '../widgets/header_card.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});
  TextEditingController c = TextEditingController();

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
                              builder: (builder) => const HomeScreen()));
                    },
                    icon: const Icon(Icons.arrow_back)),
                SizedBox(
                  width: 50.w,
                ),
                Text(
                  'Edit Profile',
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: LogisticColors.black),
                ),
                const SizedBox.shrink()
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Update Your Account Information',
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

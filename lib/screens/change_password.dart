import 'package:logistic/res/comman/app_text.dart';
import 'package:logistic/screens/profile_screen.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderCard(),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const ProfileScreen()));
                    },
                    icon: const Icon(Icons.arrow_back)),
                Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: LogisticColors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Update Your Account Security',
              style: TextStyle(
                fontSize: 13.sp,
                color: LogisticColors.black,
              ),
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
                  MyTextFeild(
                    controller: c,
                    headingText: 'Enter Old Password',
                    hintText: '✱✱✱✱✱✱✱✱',
                    img: 'lib/assets/images/Vector1.png',
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  MyTextFeild(
                    controller: c,
                    headingText: 'Enter New Password',
                    hintText: '✱✱✱✱✱✱✱✱',
                    img: 'lib/assets/images/Vector1.png',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyTextFeild(
                    controller: c,
                    headingText: 'Re-enter New Password',
                    hintText: '✱✱✱✱✱✱✱✱',
                    img: 'lib/assets/images/Vector1.png',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.04),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const SignInScreen(),
                //   ),
                // );
              },
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: height * 0.016),
                  margin: EdgeInsets.symmetric(horizontal: width * 0.09),
                  decoration: const BoxDecoration(
                    color: LogisticColors.buttonBlack,
                    borderRadius: BorderRadius.all(
                      Radius.circular(32),
                    ),
                  ),
                  child: MyTextPoppines(
                    text: "Save",
                    color: LogisticColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.045,
                  )),
            ),
            SizedBox(height: height * 0.05)
          ],
        ),
      ),
    );
  }
}

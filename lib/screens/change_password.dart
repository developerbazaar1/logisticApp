import 'package:logistic/res/comman/app_text.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/header_card.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
            Text(
              'Change Password',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: LogisticColors.black,
              ),
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
                  Text(
                    'Enter Old Password',
                    style: TextStyle(
                      color: LogisticColors.white,
                      fontSize: 16.sp,
                    ),
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
                          child: Image.asset('lib/assets/images/Vector1.png'),
                        ),
                        hintStyle: const TextStyle(color: LogisticColors.white),
                        fillColor: LogisticColors.white.withOpacity(0.5),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Enter New Password',
                    style: TextStyle(
                      color: LogisticColors.white,
                      fontSize: 16.sp,
                    ),
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
                          child: Image.asset('lib/assets/images/Vector1.png'),
                        ),
                        hintStyle: const TextStyle(color: LogisticColors.white),
                        fillColor: LogisticColors.white.withOpacity(0.5),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Re-enter New Password',
                    style: TextStyle(
                      color: LogisticColors.white,
                      fontSize: 16.sp,
                    ),
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
                          child: Image.asset('lib/assets/images/Vector1.png'),
                        ),
                        hintStyle: const TextStyle(color: LogisticColors.white),
                        fillColor: LogisticColors.white.withOpacity(0.5),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
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

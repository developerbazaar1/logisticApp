import 'package:logistic/screens/profile_screen.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/header_card.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
              'Privacy Policy',
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: LogisticColors.black),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Your Privacy Matters to Us',
          style: TextStyle(fontSize: 16.sp, color: LogisticColors.black),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: LogisticColors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0,
                  ),
                ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Privacy Policy',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: LogisticColors.black),
              ),
              SizedBox(height: 10.h),
              Text(
                'We at Wasai LLC respect the privacy of your personal information and, as such, make every effort to ensure your information is protected and remains private. As the owner and operator of loremipsum.io (the "Website") hereafter referred to in this Privacy Policy as "Lorem Ipsum", "us", "our" or "we", we have provided this Privacy Policy to explain how we collect, use, share and protect information about the users of our Website (hereafter referred to as “user”, “you” or "your"). For the purposes of this Agreement, any use of the terms "Lorem Ipsum", "us", "our" or "we" includes Wasai LLC, without limitation. We will not use or share your personal information with anyone except as described in this Privacy Policy.',
                style: TextStyle(fontSize: 12.sp, color: LogisticColors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'We at Wasai LLC respect the privacy of your personal information and, as such, make every effort to ensure your information is protected and remains private. As the owner and operator of loremipsum.io (the "Website") hereafter referred to in this Privacy Policy as "Lorem Ipsum", "us", "our" or "we", we have provided this Privacy Policy to explain how we collect, use, share and protect information about the users of our Website (hereafter referred to as “user”, “you” or "your"). For the purposes of this Agreement, any use of the terms "Lorem Ipsum", "us", "our" or "we" includes Wasai LLC, without limitation. We will not use or share your personal information with anyone except as described in this Privacy Policy.',
                style: TextStyle(fontSize: 12.sp, color: LogisticColors.black),
              ),
            ]))
      ],
    ));
  }
}

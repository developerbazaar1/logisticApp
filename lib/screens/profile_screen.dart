import 'package:logistic/utils/barrel.dart';
import 'package:logistic/utils/icons.dart';
import 'package:logistic/widgets/header_card.dart';
import 'package:logistic/widgets/profile_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const HeaderCard(),
        SizedBox(
          height: 20.h,
        ),
        Container(
          height: 100.h,
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: LogisticColors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 8.0,
                ),
              ]),
          child: Row(
            children: [
              Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: LogisticColors.white,
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.0,
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage(
                        LogisticImages.splash,
                      )))),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Shiva Kapoor',
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: LogisticColors.black),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'shivakapoor@gmail.com',
                    style:
                        TextStyle(fontSize: 16.sp, color: LogisticColors.black),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            padding: EdgeInsets.only(top: 30.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: LogisticColors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0,
                  ),
                ]),
            child: Column(
              children: [
                ProfileTile(
                  iconName: LogisticIcons.editProfile,
                  title: 'Edit Profile',
                  onTap: () {},
                ),
                ProfileTile(
                  iconName: LogisticIcons.changePassword,
                  title: 'Change password',
                  onTap: () {},
                ),
                ProfileTile(
                  iconName: LogisticIcons.notification,
                  title: 'Notification',
                  onTap: () {},
                ),
                ProfileTile(
                  iconName: LogisticIcons.connectedAccounts,
                  title: 'Control connected accounts',
                  onTap: () {},
                ),
                ProfileTile(
                  iconName: LogisticIcons.privacyPolicy,
                  title: 'Privacy Policy',
                  onTap: () {},
                ),
                ProfileTile(
                  iconName: LogisticIcons.termsAndCondition,
                  title: 'Terms & Condition',
                  onTap: () {},
                ),
                ProfileTile(
                  iconName: LogisticIcons.logOut,
                  title: 'Logout',
                  color: Colors.red,
                  onTap: () {},
                ),
              ],
            ))
      ],
    ));
  }
}

import 'package:logistic/utils/barrel.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile(
      {required this.iconName,
      required this.onTap,
      required this.title,
      this.color = LogisticColors.yellow,
      super.key});
  final String iconName;
  final String title;
  final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(
              width: 20.w,
            ),
            Container(
              height: 30.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: color.withOpacity(0.1)),
              child: Image.asset(iconName),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16.sp,
                  color: LogisticColors.black,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            if (title != 'Logout') const Icon(Icons.arrow_forward_ios),
            SizedBox(
              width: 20.w,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:logistic/utils/barrel.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: LogisticColors.black),
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(bottom: 20.h),
      height: 100.h,
      width: double.maxFinite,
      child: Image.asset(LogisticImages.truck),
    );
  }
}

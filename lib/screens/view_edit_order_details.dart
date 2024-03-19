import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logistic/utils/colors.dart';
import 'package:logistic/widgets/header_card.dart';

class ViewEditOrderDetails extends StatelessWidget {
  const ViewEditOrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const HeaderCard(),
        SizedBox(
          height: 24.h,
        ),
        Text(
          'View/Edit Order Details',
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: LogisticColors.black),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Manage and Update The Details of Your Existing Orders With Ease.',
          style: TextStyle(fontSize: 16.sp, color: LogisticColors.black),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          height: 70.h,
          width: 355.w,
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
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Upload Documents',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: LogisticColors.black),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                      'lib/assets/images/solar_cloud-upload-bold.png'),
                ),
              ),
              SizedBox(width: 20.w)
            ],
          ),
        ),
      ],
    ));
  }
}

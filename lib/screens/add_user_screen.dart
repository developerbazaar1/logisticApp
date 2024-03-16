import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/header_card.dart';

class AddUserScreen extends StatelessWidget {
  const AddUserScreen({super.key});

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
          'Add New User',
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: LogisticColors.black),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Enter Details to Create a New User',
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
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100.h,
                  width: 100.h,
                  decoration: BoxDecoration(
                      color: LogisticColors.white.withOpacity(0.5),
                      border: Border.all(color: LogisticColors.white),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: LogisticColors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Username',
                style: TextStyle(color: LogisticColors.white, fontSize: 16.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                  cursorColor: LogisticColors.white,
                  decoration: InputDecoration(
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
                      )))
            ],
          ),
        )
      ],
    ));
  }
}

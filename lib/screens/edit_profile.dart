import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/header_card.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const HeaderCard(),
          SizedBox(
            height: 24.h,
          ),
          Text(
            'Edit Profile',
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: LogisticColors.black),
          ),
          SizedBox(
            height: 10.h,
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
                  height: 16.h,
                ),
                Text(
                  'Name',
                  style:
                      TextStyle(color: LogisticColors.white, fontSize: 16.sp),
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
                      hintText: "Shiva Kapoor",
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
                  height: 16.h,
                ),
                Text(
                  'Email Address:',
                  style:
                      TextStyle(color: LogisticColors.white, fontSize: 16.sp),
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
                      hintText: "shivakapoor@gmail.com",
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
                  height: 16.h,
                ),
                Text(
                  'Phone Number',
                  style:
                      TextStyle(color: LogisticColors.white, fontSize: 16.sp),
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
                      hintText: "+91 9876543210",
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
                  height: 16.h,
                ),
                Text(
                  'Password',
                  style:
                      TextStyle(color: LogisticColors.white, fontSize: 16.sp),
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
                  height: 16.h,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

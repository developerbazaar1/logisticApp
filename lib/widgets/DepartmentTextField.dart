import 'package:logistic/utils/barrel.dart';

Widget DepartmentTextField(var v, var h, String hedingText, String hint) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        hedingText,
        style: TextStyle(color: LogisticColors.white, fontSize: 16.sp),
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
            hintText: hint,
            contentPadding: const EdgeInsets.only(top: 0, left: 10),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('lib/assets/images/Vector.png'),
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
    ],
  );
}

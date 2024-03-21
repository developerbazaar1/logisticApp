// ignore: file_names

import 'package:google_fonts/google_fonts.dart';
import 'package:logistic/res/comman/app_text.dart';
import 'package:logistic/utils/barrel.dart';

class MyTextFeild extends StatelessWidget {
  final TextEditingController controller;
  final String headingText;
  final String hintText;
  final Color? hintTextColor;
  final Color? fillColor;
  final int? maxLines;
  final FocusNode? focusNode;
  final Function(String)? onSubmit;
  final String? Function(String?)? validator;
  const MyTextFeild({
    super.key,
    required this.controller,
    required this.headingText,
    required this.hintText,
    this.fillColor,
    this.validator,
    this.focusNode,
    this.onSubmit,
    this.maxLines,
    this.hintTextColor,
  });
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    OutlineInputBorder lineBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(width * 0.036),
      borderSide: BorderSide(
        width: width * 0.003,
        color: Colors.white,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.01),
        MyTextPoppines(
          text: headingText,
          fontSize: width * 0.040,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: height * 0.009),
        SizedBox(
          height: height * 0.05,
          child: TextFormField(
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            controller: controller,
            cursorColor: Colors.white,
            maxLines: maxLines ?? 1,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 0, left: width * 0.03),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintText: hintText,
              hintStyle: GoogleFonts.titilliumWeb(
                color: Colors.white,
                fontSize: width * 0.036,
                fontWeight: FontWeight.w300,
              ),
              fillColor: fillColor ?? Colors.white,
              filled: true,
              border: lineBorder,
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                borderSide:
                    BorderSide(color: Colors.black, width: width * 0.003),
              ),
              enabledBorder: lineBorder,
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              focusColor: Colors.black,
            ),
            validator: validator,
            focusNode: focusNode,
            onFieldSubmitted: onSubmit,
          ),
        ),
      ],
    );
  }
}

Widget customeTextField(var v, var h, String hedingText, String hint) {
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
        width: 270.w,
        child: TextFormField(
          cursorColor: LogisticColors.white,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 0, left: 20),
            // suffixIcon: Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Image.asset('lib/assets/images/Vector1.png'),
            // ),
            hintText: hint,
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

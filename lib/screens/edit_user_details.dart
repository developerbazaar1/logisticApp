import 'package:logistic/screens/home_screen.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/header_card.dart';

class EditUserDetails extends StatelessWidget {
  const EditUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        flexibleSpace: const HeaderCard(),
        expandedHeight: 50.h,
        floating: false,
        pinned: true,
        automaticallyImplyLeading: false,
      ),
      SliverToBoxAdapter(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const HomeScreen()));
                    },
                    icon: const Icon(Icons.arrow_back)),
                SizedBox(
                  width: 50.w,
                ),
                Text(
                  'Edit User Details',
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: LogisticColors.black),
                ),
                const SizedBox.shrink(),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Update user information',
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
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: LogisticColors.white.withOpacity(0.5),
                              border: Border.all(color: LogisticColors.white),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: LogisticColors.white,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(top: 10, right: 10),
                            child: Icon(
                              Icons.edit,
                              color: LogisticColors.white,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Username',
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
                        hintText: "kulpatel_256",
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
                        hintText: "Kuldeep Patel",
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
                    'Email Address',
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
                        hintText: "dummy@login.com",
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
                    'Department',
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
                        hintText: "Operations",
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
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Responsibility',
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
                        hintText: "Manager",
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
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (builder) =>
                  //             const BottomNavigationScreen()));
                },
                child: Container(
                    width: 200.w,
                    height: 52.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: LogisticColors.black,
                        borderRadius: BorderRadius.circular(32)),
                    child: Text('Save',
                        style: TextStyle(
                          color: LogisticColors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ))),
              ),
            )
          ],
        ),
      )
    ]));
  }
}

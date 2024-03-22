import 'package:google_fonts/google_fonts.dart';
import 'package:logistic/res/comman/app_text.dart';
import 'package:logistic/screens/bottom_navigation_screen.dart';
import 'package:logistic/screens/view_edit_order_details.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/MyTextField.dart';
import 'package:logistic/widgets/header_card.dart';

class EditShipmentDetails extends StatelessWidget {
  TextEditingController c = TextEditingController();
  EditShipmentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
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
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) =>
                                      const ViewEditOrderDetails()));
                        },
                        icon: const Icon(Icons.arrow_back)),
                    SizedBox(
                      width: 40.w,
                    ),
                    Text(
                      'Edit Shipment Details',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: LogisticColors.black,
                      ),
                    ),
                    const SizedBox.shrink()
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'Update Information for Existing Shipment',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: LogisticColors.black,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                  decoration: BoxDecoration(
                    color: LogisticColors.yellow,
                    borderRadius: BorderRadius.circular(32),
                    image: const DecorationImage(
                        image: AssetImage('lib/assets/images/background.png')),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Enter Pickup and Delivery Locations",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: LogisticColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      MyTextFeild(
                          controller: c,
                          headingText: 'Pickup Location',
                          hintText: 'Warehouse ABC, Mumbai, Maharashtra'),
                      SizedBox(
                        height: 20.h,
                      ),
                      MyTextFeild(
                          controller: c,
                          headingText: 'Delivery Location',
                          hintText: "Customer XYZ's Shop, Pune, Maharashtra"),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Enter Departed Date & Time',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: LogisticColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      MyTextFeild(
                          controller: c,
                          headingText: 'Enter Departed Date & Time',
                          hintText: 'Sumit Harwani'),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Enter Driver Details',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: LogisticColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      MyTextFeild(
                          controller: c,
                          headingText: "Driver's Name",
                          hintText: 'Rajesh Kumar'),
                      SizedBox(
                        height: 20.h,
                      ),
                      MyTextFeild(
                          controller: c,
                          headingText: "Driver's Contact Number",
                          hintText: '+91 98765 43210'),
                      SizedBox(
                        height: 20.h,
                      ),
                      MyTextFeild(
                          controller: c,
                          headingText: "Driver's Vehicle Number",
                          hintText: 'MH-12-AB-1234'),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Enter Management Details",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: LogisticColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      MyTextFeild(
                          controller: c,
                          headingText: 'Manager’s Name',
                          hintText: 'Sumit Harwani'),
                      SizedBox(
                        height: 20.h,
                      ),
                      MyTextFeild(
                          controller: c,
                          headingText: 'Manager’s Contact Number',
                          hintText: '+91 98765 43210'),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const HomeScreen(),
                      //   ),
                      // );
                    },
                    child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: height * 0.02),
                        margin: EdgeInsets.symmetric(horizontal: width * 0.10),
                        decoration: const BoxDecoration(
                          color: LogisticColors.buttonBlack,
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        // child: InkWell(
                        //   onTap: () {
                        //     // Show dialog
                        //     showDialog(
                        //       context: context,
                        //       builder: (BuildContext context) {
                        //         // Return object of type Dialog
                        //         return AlertDialog(
                        //           backgroundColor: Colors.white,
                        //           title: const Text(
                        //             "Shipment Details Updated",
                        //             style: TextStyle(color: Colors.black),
                        //           ),
                        child: InkWell(
                          onTap: () {
                            // Show dialog
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                // Return object of type Dialog
                                return AlertDialog(
                                  backgroundColor: Colors.white,
                                  title: Column(
                                    children: [
                                      Image.asset('lib/assets/gif/gif3.gif',
                                          width: 200, height: 200),
                                      Text(
                                        "Shipment Details Updated",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                18, // Adjust font size as needed
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  content: Text(
                                    "The shipment details have been successfully updated Any changes made to the shipment have been saved.",
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            14, // Adjust font size as needed
                                      ),
                                    ),
                                  ),
                                  actions: <Widget>[
                                    // Close button
                                    Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color:
                                              Colors.black, // Background color
                                          borderRadius: BorderRadius.circular(
                                              25), // Rounded corners
                                        ),
                                        child: TextButton(
                                          child: Text(
                                            "Okay",
                                            style: TextStyle(
                                              color: LogisticColors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: width * 0.045,
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const BottomNavigationScreen()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: MyTextPoppines(
                            text: "Save",
                            color: LogisticColors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.045,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

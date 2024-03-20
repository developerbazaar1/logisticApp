// import 'package:logistic/utils/barrel.dart';
// import 'package:logistic/widgets/header_card.dart';

// class EditShipmentDetails extends StatelessWidget {
//   const EditShipmentDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const HeaderCard(),
//             SizedBox(
//               height: 24.h,
//             ),
//             Text(
//               'Edit Shipment Details',
//               style: TextStyle(
//                 fontSize: 24.sp,
//                 fontWeight: FontWeight.bold,
//                 color: LogisticColors.black,
//               ),
//             ),
//             SizedBox(
//               height: 10.h,
//             ),
//             Text(
//               'Update Information for Existing Shipment',
//               style: TextStyle(
//                 fontSize: 13.sp,
//                 color: LogisticColors.black,
//               ),
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//             Container(
//               width: double.maxFinite,
//               margin: EdgeInsets.symmetric(horizontal: 20.w),
//               padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
//               decoration: BoxDecoration(
//                 color: LogisticColors.yellow,
//                 borderRadius: BorderRadius.circular(32),
//                 image: const DecorationImage(
//                     image: AssetImage('lib/assets/images/background.png')),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16.0),
//                     child: Text(
//                       "Enter Pickup and Delivery Locations",
//                       style: TextStyle(
//                         fontSize: 14.sp,
//                         color: LogisticColors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     'Pickup Location',
//                     style: TextStyle(
//                       color: LogisticColors.white,
//                       fontSize: 16.sp,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5.h,
//                   ),
//                   TextFormField(
//                     cursorColor: LogisticColors.white,
//                     decoration: InputDecoration(
//                       fillColor: LogisticColors.white.withOpacity(0.5),
//                       filled: true,
//                       border: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       focusedBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       enabledBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     'Delivery Location',
//                     style: TextStyle(
//                       color: LogisticColors.white,
//                       fontSize: 16.sp,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5.h,
//                   ),
//                   TextFormField(
//                     cursorColor: LogisticColors.white,
//                     decoration: InputDecoration(
//                       fillColor: LogisticColors.white.withOpacity(0.5),
//                       filled: true,
//                       border: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       focusedBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       enabledBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     'Enter Departed Date & Time',
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: LogisticColors.black,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     'Enter Departed Date & Time',
//                     style: TextStyle(
//                       color: LogisticColors.white,
//                       fontSize: 16.sp,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5.h,
//                   ),
//                   TextFormField(
//                     cursorColor: LogisticColors.white,
//                     decoration: InputDecoration(
//                       fillColor: LogisticColors.white.withOpacity(0.5),
//                       filled: true,
//                       border: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       focusedBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       enabledBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     'Enter Driver Details',
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: LogisticColors.black,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     'Driver Name',
//                     style: TextStyle(
//                       color: LogisticColors.white,
//                       fontSize: 16.sp,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5.h,
//                   ),
//                   TextFormField(
//                     cursorColor: LogisticColors.white,
//                     decoration: InputDecoration(
//                       fillColor: LogisticColors.white.withOpacity(0.5),
//                       filled: true,
//                       border: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       focusedBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       enabledBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     'Driver Contact Number',
//                     style: TextStyle(
//                       color: LogisticColors.white,
//                       fontSize: 16.sp,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5.h,
//                   ),
//                   TextFormField(
//                     cursorColor: LogisticColors.white,
//                     decoration: InputDecoration(
//                       fillColor: LogisticColors.white.withOpacity(0.5),
//                       filled: true,
//                       border: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       focusedBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       enabledBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     'Driver Vehicle Number',
//                     style: TextStyle(
//                       color: LogisticColors.white,
//                       fontSize: 16.sp,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5.h,
//                   ),
//                   TextFormField(
//                     cursorColor: LogisticColors.white,
//                     decoration: InputDecoration(
//                       fillColor: LogisticColors.white.withOpacity(0.5),
//                       filled: true,
//                       border: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       focusedBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       enabledBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     "Enter Management Details",
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: LogisticColors.black,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     'Manager’s Name',
//                     style: TextStyle(
//                       color: LogisticColors.white,
//                       fontSize: 16.sp,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5.h,
//                   ),
//                   TextFormField(
//                     cursorColor: LogisticColors.white,
//                     decoration: InputDecoration(
//                       fillColor: LogisticColors.white.withOpacity(0.5),
//                       filled: true,
//                       border: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       focusedBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       enabledBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     'Manager’s Contact Number',
//                     style: TextStyle(
//                       color: LogisticColors.white,
//                       fontSize: 16.sp,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5.h,
//                   ),
//                   TextFormField(
//                     cursorColor: LogisticColors.white,
//                     decoration: InputDecoration(
//                       fillColor: LogisticColors.white.withOpacity(0.5),
//                       filled: true,
//                       border: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       focusedBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       enabledBorder: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:logistic/screens/view_edit_order_details.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/header_card.dart';

class EditShipmentDetails extends StatelessWidget {
  const EditShipmentDetails({super.key});

  @override
  Widget build(BuildContext context) {
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
                      Text(
                        'Pickup Location',
                        style: TextStyle(
                          color: LogisticColors.white,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      SizedBox(
                        height: 40.h,
                        width: 290.w,
                        child: TextFormField(
                          cursorColor: LogisticColors.white,
                          decoration: InputDecoration(
                            hintText: "Warehouse ABC, Mumbai, Maharashtra",
                            hintStyle:
                                const TextStyle(color: LogisticColors.white),
                            fillColor: LogisticColors.white.withOpacity(0.5),
                            filled: true,
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Delivery Location',
                        style: TextStyle(
                          color: LogisticColors.white,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      SizedBox(
                        height: 40.h,
                        width: 290.w,
                        child: TextFormField(
                          cursorColor: LogisticColors.white,
                          decoration: InputDecoration(
                            hintText: "Customer XYZ's Shop, Pune, Maharashtra",
                            hintStyle:
                                const TextStyle(color: LogisticColors.white),
                            fillColor: LogisticColors.white.withOpacity(0.5),
                            filled: true,
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
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
                      Text(
                        'Enter Departed Date & Time',
                        style: TextStyle(
                          color: LogisticColors.white,
                          fontSize: 14.sp,
                        ),
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
                            hintText: "Sumit Harwani",
                            hintStyle:
                                const TextStyle(color: LogisticColors.white),
                            fillColor: LogisticColors.white.withOpacity(0.5),
                            filled: true,
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
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
                      Text(
                        "Driver's Name",
                        style: TextStyle(
                          color: LogisticColors.white,
                          fontSize: 14.sp,
                        ),
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
                            hintText: " Rajesh Kumar",
                            hintStyle:
                                const TextStyle(color: LogisticColors.white),
                            fillColor: LogisticColors.white.withOpacity(0.5),
                            filled: true,
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Driver's Contact Number",
                        style: TextStyle(
                          color: LogisticColors.white,
                          fontSize: 14.sp,
                        ),
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
                            hintText: "+91 98765 43210",
                            hintStyle:
                                const TextStyle(color: LogisticColors.white),
                            fillColor: LogisticColors.white.withOpacity(0.5),
                            filled: true,
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Driver's Vehicle Number",
                        style: TextStyle(
                          color: LogisticColors.white,
                          fontSize: 14.sp,
                        ),
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
                            hintText: "MH-12-AB-1234",
                            hintStyle:
                                const TextStyle(color: LogisticColors.white),
                            fillColor: LogisticColors.white.withOpacity(0.5),
                            filled: true,
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
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
                      Text(
                        'Manager’s Name',
                        style: TextStyle(
                          color: LogisticColors.white,
                          fontSize: 14.sp,
                        ),
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
                            hintText: "Sumit Harwani",
                            hintStyle:
                                const TextStyle(color: LogisticColors.white),
                            fillColor: LogisticColors.white.withOpacity(0.5),
                            filled: true,
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Manager’s Contact Number',
                        style: TextStyle(
                          color: LogisticColors.white,
                          fontSize: 14.sp,
                        ),
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
                            hintText: "+91 98765 43210",
                            hintStyle:
                                const TextStyle(color: LogisticColors.white),
                            fillColor: LogisticColors.white.withOpacity(0.5),
                            filled: true,
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
        ],
      ),
    );
  }
}

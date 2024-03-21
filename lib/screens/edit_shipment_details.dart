import 'package:logistic/screens/view_edit_order_details.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/MyTextField.dart';
import 'package:logistic/widgets/header_card.dart';

class EditShipmentDetails extends StatelessWidget {
  const EditShipmentDetails({super.key});

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
                      customeTextField(width, height, 'Pickup Location',
                          'Warehouse ABC, Mumbai, Maharashtra'),
                      SizedBox(
                        height: 20.h,
                      ),
                      customeTextField(width, height, 'Delivery Location',
                          "Customer XYZ's Shop, Pune, Maharashtra"),
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
                      customeTextField(width, height,
                          'Enter Departed Date & Time', 'Sumit Harwani'),
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
                      customeTextField(
                          width, height, "Driver's Name", 'Rajesh Kumar'),
                      SizedBox(
                        height: 20.h,
                      ),
                      customeTextField(width, height, "Driver's Contact Number",
                          '+91 98765 43210'),
                      SizedBox(
                        height: 20.h,
                      ),
                      customeTextField(height, width, "Driver's Vehicle Number",
                          'MH-12-AB-1234'),
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
                      customeTextField(
                          width, height, 'Manager’s Name', 'Sumit Harwani'),
                      SizedBox(
                        height: 20.h,
                      ),
                      customeTextField(width, height,
                          'Manager’s Contact Number', '+91 98765 43210'),
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

import 'package:logistic/screens/edit_shipment_details.dart';
import 'package:logistic/utils/icons.dart';

import '../utils/barrel.dart';
import '../widgets/header_card.dart';

class ViewEditOrderDetails extends StatelessWidget {
  const ViewEditOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        flexibleSpace: const HeaderCard(),
        expandedHeight: 100.h,
        floating: false,
        pinned: true,
        automaticallyImplyLeading: false,
      ),
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  icon: const Icon(Icons.arrow_back)),
              SizedBox(
                width: 20.w,
              ),
              Text(
                'View/Edit Order Details',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: LogisticColors.black),
              ),
            ]),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Manage and Update The Details of Your Existing Orders With Ease.',
                style: TextStyle(fontSize: 16.sp, color: LogisticColors.black),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 60.h,
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: LogisticColors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8.0,
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upload Documents',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: LogisticColors.black),
                  ),
                  Image.asset(LogisticImages.uploadImage)
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: LogisticColors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8.0,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipment Details',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: LogisticColors.black),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EditShipmentDetails()),
                            );
                          },
                          child: Image.asset(LogisticIcons.edit))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    'From',
                    style: TextStyle(color: Color(0xFF919398)),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    'Warehouse ABC, Mumbai, Maharashtra',
                    style: TextStyle(
                        color: LogisticColors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    'To',
                    style: TextStyle(color: Color(0xFF919398)),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    'Warehouse ABC, Mumbai, Maharashtra',
                    style: TextStyle(
                        color: LogisticColors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    'Departed Date & Time:',
                    style: TextStyle(color: Color(0xFF919398)),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    'February 15, 2024, 09:00 AM',
                    style: TextStyle(
                        color: LogisticColors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Driver Name:',
                            style: TextStyle(color: Color(0xFF919398)),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text(
                            'Rajesh Kumar',
                            style: TextStyle(
                                color: LogisticColors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Driver\'s Contact Number',
                            style: TextStyle(color: Color(0xFF919398)),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text(
                            '+91 98765 43210',
                            style: TextStyle(
                                color: LogisticColors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    'Driver\'s Vehicle Number',
                    style: TextStyle(color: Color(0xFF919398)),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    'MH-12-AB-1234',
                    style: TextStyle(
                        color: LogisticColors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Manager\'s Name',
                            style: TextStyle(color: Color(0xFF919398)),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text(
                            'Sumit Harwani',
                            style: TextStyle(
                                color: LogisticColors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Manager\'s Contact Number',
                            style: TextStyle(color: Color(0xFF919398)),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text(
                            '+91 98765 43210',
                            style: TextStyle(
                                color: LogisticColors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, bottom: 10.h),
              child: Text(
                'Documents',
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: LogisticColors.black),
              ),
            ),
            const DocumentCard(),
            const DocumentCard(),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    ]));
  }
}

class DocumentCard extends StatelessWidget {
  const DocumentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.w),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: LogisticColors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 8.0,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(LogisticIcons.file),
              SizedBox(
                width: 12.w,
              ),
              Text(
                'Purchase_Order_(PO).pdf',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: LogisticColors.black,
                    fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              Image.asset(LogisticIcons.download)
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            '200 KB',
            style: TextStyle(color: const Color(0xFF989692), fontSize: 12.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Click to view',
            style: TextStyle(
                color: LogisticColors.primary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5.h,
          )
        ],
      ),
    );
  }
}

import 'package:logistic/screens/view_edit_order_details.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/utils/icons.dart';

class VechileInfoCard extends StatelessWidget {
  const VechileInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        surfaceTintColor: Colors.white,
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
              child: Row(
                children: [
                  Image.asset(LogisticIcons.inTransit),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'MH-12-AB-1234',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: LogisticColors.black),
                  ),
                  const Spacer(),
                  Text(
                    'In Transit',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: LogisticColors.green),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'From',
                        style: TextStyle(color: Color(0xFF919398)),
                      ),
                      Text(
                        'Manufacturer\'s Warehouse',
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: LogisticColors.black),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'To',
                        style: TextStyle(color: Color(0xFF919398)),
                      ),
                      Text(
                        'Townsville, State',
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: LogisticColors.black),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Driver Name:',
                        style: TextStyle(color: Color(0xFF919398)),
                      ),
                      Text(
                        'Rajesh Kumar',
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: LogisticColors.black),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Manage By:',
                        style: TextStyle(color: Color(0xFF919398)),
                      ),
                      Text(
                        'Sumit Harwani',
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: LogisticColors.black),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Departed Date & Time:',
                        style: TextStyle(color: Color(0xFF919398)),
                      ),
                      Text(
                        'February 15, 2024, 09:00 AM',
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: LogisticColors.black),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: LogisticColors.yellow),
                    child: Row(
                      children: [
                        const Text(
                          'View/Edit',
                          style: TextStyle(
                              color: LogisticColors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) =>
                                        const ViewEditOrderDetails()));
                          },
                          child: const Icon(Icons.border_color),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

import 'package:logistic/screens/new_order_screen.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/header_card.dart';
import 'package:logistic/widgets/vechile_info_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderCard(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Good Morning',
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: LogisticColors.black),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Streamline Your Shipments, Track with Confidence, and Simplify Documentation',
                        style: TextStyle(
                            fontSize: 16.sp, color: LogisticColors.black),
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewOrderScreen(
                                    key: null,
                                  )),
                        );
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: LogisticColors.yellow,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: LogisticColors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                itemBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: VechileInfoCard(),
                    ),
                itemCount: 2),
          )
        ],
      ),
    );
  }
}

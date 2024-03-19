import 'package:logistic/screens/edit_user_details.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/header_card.dart';

class ViewUserScreen extends StatelessWidget {
  const ViewUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const HeaderCard(),
        SizedBox(
          height: 24.h,
        ),
        Text(
          'User Management',
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: LogisticColors.black),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'View and Manage Users',
          style: TextStyle(fontSize: 16.sp, color: LogisticColors.black),
        ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) => Container(
                      height: 110.h,
                      clipBehavior: Clip.antiAlias,
                      margin: EdgeInsets.only(
                          bottom: 20.h, right: 20.w, left: 20.w),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8.0,
                            ),
                          ],
                          color: LogisticColors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            LogisticImages.splash,
                            height: 110.h,
                            width: 100.h,
                            fit: BoxFit.cover,
                            isAntiAlias: true,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              const Text(
                                'User Name',
                                style: TextStyle(color: LogisticColors.grey),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              const Text(
                                'kulpatel_256',
                                style: TextStyle(color: LogisticColors.black),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              const Text(
                                'Department',
                                style: TextStyle(color: LogisticColors.grey),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              const Text(
                                'Townsville, State',
                                style: TextStyle(color: LogisticColors.black),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 6.h,
                              ),
                              const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              const EditUserDetails()));
                                },
                                child: const Icon(
                                  Icons.border_color,
                                  color: LogisticColors.yellow,
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.w,
                          )
                        ],
                      ),
                    ),
                itemCount: 10))
      ],
    ));
  }
}

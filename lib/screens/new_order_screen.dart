import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logistic/res/comman/app_text.dart';
import 'package:logistic/screens/bottom_navigation_screen.dart';
import 'package:logistic/screens/home_screen.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/widgets/MyTextField.dart';
import 'package:logistic/widgets/header_card.dart';

class NewOrderScreen extends StatelessWidget {
  NewOrderScreen({super.key});
  TextEditingController c = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: const HeaderCard(),
            expandedHeight: height * 0.04,
            floating: false,
            pinned: true,
            automaticallyImplyLeading: false,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (builder) => const HomeScreen(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.arrow_back)),
                    SizedBox(
                      width: width * 0.15,
                    ),
                    const Text(
                      'Create New Order',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: LogisticColors.black,
                      ),
                    ),
                    const SizedBox.shrink()
                  ],
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                const Text(
                  'Quickly and Easily Add a New Shipment Request',
                  style: TextStyle(
                    fontSize: 13,
                    color: LogisticColors.black,
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.04, vertical: height * 0.04),
                  decoration: BoxDecoration(
                    color: LogisticColors.yellow,
                    borderRadius: BorderRadius.circular(23),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/images/background.png'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          offset: const Offset(0, 0),
                          blurRadius: 25)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Enter Pickup and Delivery Locations",
                          style: TextStyle(
                            fontSize: 16,
                            color: LogisticColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.016),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: height * 0.016),
                              Container(
                                width: width * 0.033,
                                height: height * 0.016,
                                color: Colors.black,
                              ),
                              const DottedLine(
                                direction: Axis.vertical,
                                lineLength: 70,
                                dashLength: 4.0,
                                dashRadius: 1.0,
                                dashGapLength: 4.0,
                                dashGapRadius: 0.6,
                              ),
                              const CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.black,
                              )
                            ],
                          ),
                          SizedBox(width: width * 0.03),
                          Expanded(
                            child: Column(
                              children: [
                                MyTextFeild(
                                    controller: c,
                                    headingText: 'Pickup Location',
                                    hintText:
                                        'Warehouse ABC, Mumbai, Maharashtra'),
                                SizedBox(
                                  height: height * 0.023,
                                ),
                                MyTextFeild(
                                    controller: c,
                                    headingText: 'Delivery Location',
                                    hintText:
                                        "Customer XYZ's Shop, Pune, Maharashtra"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      const Text(
                        'Enter Departed Date & Time',
                        style: TextStyle(
                          fontSize: 16,
                          color: LogisticColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: height * 0.016),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: height * 0.016),
                              const CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.black,
                              )
                            ],
                          ),
                          SizedBox(width: width * 0.03),
                          Expanded(
                            child: Column(
                              children: [
                                MyTextFeild(
                                    controller: c,
                                    headingText: 'Enter Departed Date & Time',
                                    hintText: 'Sumit Harwani'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      const Text(
                        'Enter Driver Details',
                        style: TextStyle(
                          fontSize: 16,
                          color: LogisticColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: height * 0.016),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: height * 0.016),
                              Container(
                                width: width * 0.033,
                                height: height * 0.016,
                                color: Colors.black,
                              ),
                              const DottedLine(
                                direction: Axis.vertical,
                                lineLength: 70,
                                dashLength: 4.0,
                                dashRadius: 1.0,
                                dashGapLength: 4.0,
                                dashGapRadius: 0.6,
                              ),
                              const Icon(CupertinoIcons.arrow_down),
                              const DottedLine(
                                direction: Axis.vertical,
                                lineLength: 70,
                                dashLength: 4.0,
                                dashRadius: 1.0,
                                dashGapLength: 4.0,
                                dashGapRadius: 0.6,
                              ),
                              const CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.black,
                              )
                            ],
                          ),
                          SizedBox(width: width * 0.03),
                          Expanded(
                            child: Column(
                              children: [
                                MyTextFeild(
                                    controller: c,
                                    headingText: "Driver's Name",
                                    hintText: 'Rajesh Kumar'),
                                SizedBox(
                                  height: height * 0.023,
                                ),
                                MyTextFeild(
                                    controller: c,
                                    headingText: "Driver's Contact Number",
                                    hintText: '+91 98765 43210'),
                                SizedBox(
                                  height: height * 0.023,
                                ),
                                MyTextFeild(
                                    controller: c,
                                    headingText: "Driver's Vehicle Number",
                                    hintText: 'MH-12-AB-1234'),
                              ],
                            ),
                          ),
                        ], //children
                      ),
                      SizedBox(height: height * 0.035),
                      const Text(
                        "Enter Management Details",
                        style: TextStyle(
                          fontSize: 16,
                          color: LogisticColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: height * 0.016),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: height * 0.016),
                              Container(
                                width: width * 0.033,
                                height: height * 0.016,
                                color: Colors.black,
                              ),
                              const DottedLine(
                                direction: Axis.vertical,
                                lineLength: 70,
                                dashLength: 4.0,
                                dashRadius: 1.0,
                                dashGapLength: 4.0,
                                dashGapRadius: 0.6,
                              ),
                              const Icon(CupertinoIcons.arrow_down),
                              const DottedLine(
                                direction: Axis.vertical,
                                lineLength: 70,
                                dashLength: 4.0,
                                dashRadius: 1.0,
                                dashGapLength: 4.0,
                                dashGapRadius: 0.6,
                              ),
                              const CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.black,
                              )
                            ],
                          ),
                          SizedBox(width: width * 0.03),
                          Expanded(
                            child: Column(
                              children: [
                                MyTextFeild(
                                    controller: c,
                                    headingText: 'Manager’s Name',
                                    hintText: 'Sumit Harwani'),
                                SizedBox(
                                  height: height * 0.023,
                                ),
                                MyTextFeild(
                                    controller: c,
                                    headingText: 'Manager’s Contact Number',
                                    hintText: '+91 98765 43210'),
                                SizedBox(
                                  height: height * 0.023,
                                ),
                                MyTextFeild(
                                    controller: c,
                                    headingText: 'Client Name',
                                    hintText: 'Shiva Kapoor'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.04),
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
                        margin: EdgeInsets.symmetric(horizontal: width * 0.19),
                        decoration: const BoxDecoration(
                          color: LogisticColors.buttonBlack,
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
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
                                      Image.asset('lib/assets/gif/gif2.gif',
                                          width: 150, height: 150),
                                      SizedBox(height: height * 0.00),
                                      Text(
                                        "Congratulations!",
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
                                    "Your order shipment has been successfully created You will receive further updates regarding the shipment status shortly.",
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            14, // Adjust font size as needed
                                      ),
                                    ),
                                  ),
                                  actions: <Widget>[
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
                SizedBox(
                  height: height * 0.05,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

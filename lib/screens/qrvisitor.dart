import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:qr_code_generator/screens/visitor.dart';
import 'package:qr_code_generator/utils/appcolors.dart';
import 'package:qr_code_generator/utils/rounded_back_button.dart';
import 'package:qr_code_generator/utils/simple_text.dart';

class QrVisitorScreen extends StatelessWidget {
  String datastring;
  QrVisitorScreen({
    Key? key,
    required this.datastring,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(color: Colors.white),
      backgroundColor: AppColors.backgroundBlue,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.sp, bottom: 18.sp),
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VisitorScreen()));
                    },
                    child: BackButtonRounded(
                      color: AppColors.primaryWhite,
                      iconcolor: AppColors.primaryBlack,
                      bordercolor: AppColors.primaryGrey,
                    ),
                  ),
                  CustomText(
                      text: "Visitor Pass ",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      fontColor: AppColors.primaryBlack),
                  Icon(
                    Icons.abc,
                    color: Colors.transparent,
                  ),
                  Icon(
                    Icons.abc,
                    color: Colors.transparent,
                  ),
                ],
              )),
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                  color: AppColors.primaryWhite),
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 20.sp, left: 20.sp, right: 20.sp),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 30.sp,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.sp),
                            color: AppColors.ebox1gradient1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/benaam.png",
                              scale: 4,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              'Share',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        height: 70.h,
                        width: 90.w,
                        color: AppColors.gradientcolor2,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                "assets/Ellipse 61.png",
                                scale: 4,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.5.h),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0)),
                                    color: AppColors.ebox1gradient1,
                                  ),
                                  height: 7.h,
                                  width: 25.w,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Visitor \n Pass",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h, top: 3.h),
                              child: Image.asset(
                                "assets/Group 165.png",
                                scale: 3,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 19.h),
                              child: Center(
                                child: QrImage(
                                  data: datastring,
                                  backgroundColor: Colors.white,
                                  version: QrVersions.auto,
                                  size: 300.0,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Image.asset(
                                'assets/Ellipse 59.png',
                                scale: 4,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h, bottom: 5.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Name",
                                        style: TextStyle(
                                            fontSize: 4.w,
                                            color: Colors.grey.shade500),
                                      )),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Jawad Khan",
                                        style: TextStyle(fontSize: 4.w),
                                      )),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "CNIC",
                                        style: TextStyle(
                                            fontSize: 4.w,
                                            color: Colors.grey.shade500),
                                      )),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "42501-34343422-4",
                                        style: TextStyle(fontSize: 4.w),
                                      )),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Meeto To",
                                        style: TextStyle(
                                            fontSize: 4.w,
                                            color: Colors.grey.shade500),
                                      )),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Faizan Sheikh",
                                        style: TextStyle(fontSize: 4.w),
                                      )),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Meeto Time",
                                        style: TextStyle(
                                            fontSize: 4.w,
                                            color: Colors.grey.shade500),
                                      )),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Aug 03 2022 | 11:45 AM",
                                        style: TextStyle(fontSize: 4.w),
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

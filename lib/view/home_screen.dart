import 'package:celebrare_assignment/constants/text_style.dart';
import 'package:celebrare_assignment/controller/home_controller.dart';
import 'package:celebrare_assignment/widgets/get_shape.dart';
import 'package:celebrare_assignment/widgets/popup_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black54,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Add Image / Icon",
          style: MyTextStyle.titleTextStyle,
        ),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Column(
                children: [
                  Container(
                    height: 120.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: Colors.black45,
                        width: 1.w,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "Upload Image",
                          style: MyTextStyle.subTitleTextStyle,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () async {
                            await controller.pickingImage();
                            if (controller.image != null) {
                              // ignore: use_build_context_synchronously
                              popUpDialog(context, controller.image!);
                            }
                          },
                          child: Container(
                            height: 40.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.cyan[800],
                            ),
                            child: Center(
                              child: Text(
                                "Choose from Device",
                                style: MyTextStyle.normalTextStyle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 400.h,
                    width: 340.w,
                    child: controller.image == null
                        ? SizedBox()
                        : getShape(controller.index, controller.image!),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

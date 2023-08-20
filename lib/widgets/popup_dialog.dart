import 'dart:io';

import 'package:celebrare_assignment/constants/text_style.dart';
import 'package:celebrare_assignment/widgets/get_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

popUpDialog(BuildContext context, File image) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return GetBuilder<HomeController>(
        builder: (controller) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Container(
              height: 400.h,
              width: 360.w,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: Column(
                  children: [
                    Text(
                      "Uploaded Image",
                      style: MyTextStyle.titleTextStyle,
                    ),
                    SizedBox(
                      child: getShape(controller.index, image),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.changeIndex(0);
                          },
                          child: Container(
                            height: 50.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                width: 1.w,
                                color: Colors.black45,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Original",
                                style: MyTextStyle.normalTextStyle
                                    .copyWith(color: Colors.black45),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.changeIndex(1);
                          },
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                width: 1.w,
                                color: Colors.black45,
                              ),
                            ),
                            child: Image.asset(
                              "asset/images/user_image_frame_1.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.changeIndex(2);
                          },
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                width: 1.w,
                                color: Colors.black45,
                              ),
                            ),
                            child: Image.asset(
                              "asset/images/user_image_frame_2.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.changeIndex(3);
                          },
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                width: 1.w,
                                color: Colors.black45,
                              ),
                            ),
                            child: Image.asset(
                              "asset/images/user_image_frame_3.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.changeIndex(4);
                          },
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                width: 1.w,
                                color: Colors.black45,
                              ),
                            ),
                            child: Image.asset(
                              "asset/images/user_image_frame_4.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 50.h,
                        width: 360.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.cyan[800],
                        ),
                        child: Center(
                          child: Text(
                            "Use this image",
                            style: MyTextStyle.normalTextStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}

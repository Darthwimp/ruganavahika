import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:app_dev_client_project_1/widgets/appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadPrescriptionPage extends StatelessWidget {
  const UploadPrescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(true),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20.h),
            Text("Upload Prescription",
                style: Theme.of(context).textTheme.displayLarge),
            Gap(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, "/home/medicine/order/camera"),
                      child: Container(
                        height: 84.h,
                        width: 84.w,
                        decoration: BoxDecoration(
                          color: const Color(0xfe0075FF),
                          borderRadius: BorderRadius.circular(15.r),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xfe0075FF).withOpacity(0.5),
                              spreadRadius: 2.5,
                              blurRadius: 3,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 60.sp,
                          ),
                        ),
                      ),
                    ),
                    Gap(10.h),
                    Text(
                      "Take Photo",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 86.h,
                      width: 86.w,
                      decoration: BoxDecoration(
                        color: const Color(0xfe0075FF),
                        borderRadius: BorderRadius.circular(15.r),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xfe0075FF).withOpacity(0.5),
                            spreadRadius: 2.5,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.white,
                          size: 60.sp,
                        ),
                      ),
                    ),
                    Gap(10.h),
                    Text(
                      "Upload",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 84.h,
                      width: 84.w,
                      decoration: BoxDecoration(
                        color: const Color(0xfe0075FF),
                        borderRadius: BorderRadius.circular(15.r),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xfe0075FF).withOpacity(0.5),
                            spreadRadius: 2.5,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.assignment,
                          color: Colors.white,
                          size: 60.sp,
                        ),
                      ),
                    ),
                    Gap(10.h),
                    Text(
                      "Pick from Saved",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.black),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

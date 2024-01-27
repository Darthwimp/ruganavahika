import 'package:app_dev_client_project_1/widgets/hospital_widgets/filter_dialog_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

Future<void> filterDialogBuilder(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.filter_alt_outlined,
              size: 20.sp,
              color: Colors.white,
            ),
            Gap(5.w),
            Text(
              "Filter",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
        content: Container(
          height: 200.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price Range",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Gap(5.h),
              const PriceFilterSlider()
            ],
          ),
        ),
      );
    },
  );
}

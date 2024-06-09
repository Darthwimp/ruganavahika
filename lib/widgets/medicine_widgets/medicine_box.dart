import 'package:app_dev_client_project_1/consts/medicine_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MedicineCard extends StatelessWidget {
  const MedicineCard({
    super.key,
    required this.index,
    required this.path,
  });

  final int index;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 110.h,
          width: 110.w,
          decoration: BoxDecoration(
            color: const Color(0xfe0075FF),
            borderRadius: BorderRadius.circular(13.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                path,
              ),
              Gap(10.h),
              Text(concernData[index],
                  style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
        ),
        Gap(10.w)
      ],
    );
  }
}

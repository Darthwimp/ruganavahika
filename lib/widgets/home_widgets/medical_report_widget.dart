import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MedicalReport extends StatelessWidget {
  const MedicalReport({super.key, required this.date});

  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.h,
          margin: EdgeInsets.only(right: 35.sp),
          decoration: BoxDecoration(
          color: const Color(0xfe0075FF),
          borderRadius: BorderRadius.circular(8.r),
          ),
          padding: EdgeInsets.only(
            left: 20.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$date  Report.pdf",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Container(
                width: 47.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 10.sp,
                        offset: const Offset(0, 3),
                      ),
                    ]),
                child: Center(
                  child: Icon(
                    Icons.file_download_outlined,
                    size: 20.sp,
                  ),
                ),
              )
            ],
          ),
        ),
        Gap(10.h)
      ],
    );
  }
}

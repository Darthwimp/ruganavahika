import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallParagraphCard extends StatelessWidget {
  const SmallParagraphCard({
    super.key,
    required this.title,
    required this.text,
  });
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: Color(0xfe2E3532),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.h,
            width: 50.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.white, fontSize: 11.sp),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

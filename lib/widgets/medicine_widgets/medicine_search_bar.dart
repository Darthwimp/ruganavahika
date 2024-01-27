import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicineSearchBar extends StatelessWidget {
  const MedicineSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      padding: MaterialStateProperty.resolveWith(
        (states) => EdgeInsets.only(right: 0, left: 10.sp),
      ),
      backgroundColor: MaterialStateColor.resolveWith(
        (states) => const Color(0xfeBBE5ED),
      ),
      constraints: BoxConstraints(maxHeight: 30.h, maxWidth: 210.w),
      shape: MaterialStateProperty.resolveWith(
        (states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.r),
        ),
      ),
      hintText: "Search Medicines",
      hintStyle: MaterialStateProperty.resolveWith(
        (states) => Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            
            fontSize: 12.sp),
      ),
      shadowColor: MaterialStateColor.resolveWith(
        (states) => Colors.transparent,
      ),
      trailing: [
        Container(
          height: 30.h,
          width: 30.h,
          decoration: BoxDecoration(
            color: const Color(0xfe0075FF),
            borderRadius: BorderRadius.circular(7.r),
          ),
          child: Icon(
            Icons.search,
            size: 22.sp,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

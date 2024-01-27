import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInTextField extends StatelessWidget {
  const SignInTextField({super.key, required this.placeHolder, required this.controller});

  final String placeHolder;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: placeHolder,
          hintStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            color: const Color(0xfe2E3532),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color(0xfe0075FF),
              width: 2.sp,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color(0xfe0075FF),
              width: 2.sp,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          filled: true,
          fillColor: const Color(0xfeBBE5ED),
        )
      ),
    );
  }
}
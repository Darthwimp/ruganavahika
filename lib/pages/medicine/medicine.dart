import 'package:app_dev_client_project_1/widgets/appbar.dart';
import 'package:app_dev_client_project_1/widgets/medicine_widgets/medicine_search_bar.dart';
import 'package:app_dev_client_project_1/widgets/medicine_widgets/order_with_prescription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MedicinePage extends StatelessWidget {
  const MedicinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(true),
      body: SizedBox(
        child: Column(
          children: [
            Gap(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MedicineSearchBar(),
                Gap(10.w),
                Container(
                  height: 30.h,
                  width: 30.h,
                  decoration: BoxDecoration(
                    color: const Color(0xfe0075FF),
                    borderRadius: BorderRadius.circular(7.r),
                  ),
                  child: Icon(
                    Icons.shopping_cart_sharp,
                    size: 22.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Gap(25.h),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/home/medicine/order");
              },
              child: OrderWithPrescription(),
            ),
          ],
        ),
      ),
    );
  }
}

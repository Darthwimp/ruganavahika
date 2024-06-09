import 'package:app_dev_client_project_1/widgets/appbar.dart';
import 'package:app_dev_client_project_1/widgets/medicine_widgets/medicine_box.dart';
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      size: 20.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Gap(25.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/home/medicine/order");
                    },
                    child: OrderWithPrescription(),
                  ),
                ],
              ),
              Gap(20.h),
              Text(
                "Shop By Concern",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Gap(20.h),
              SizedBox(
                height: 110.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return MedicineCard(
                      index: index,
                      path:
                          "assets/images/medicineConcern/medicine${index + 1}.png",
                    );
                  },
                ),
              ),
              Gap(20.h),
              Text(
                "Shop By Category",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Gap(20.h),
              SizedBox(
                height: 110.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return MedicineCard(
                      index: index,
                      path:
                          "assets/images/medicineCategory/medicineCategory${index + 1}.png",
                    );
                  },
                ),
              ),
              Gap(20.h),
              Text(
                "Shop By Brand",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Gap(20.h),
              SizedBox(
                height: 110.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return MedicineCard(
                      index: index,
                      path:
                          "assets/images/medicineBrand/medicineBrand${index + 1}.png",
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

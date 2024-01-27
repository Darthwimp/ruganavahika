import 'package:app_dev_client_project_1/widgets/profile_widgets/profile_page_tiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ScaffoldDrawer extends StatelessWidget {
  const ScaffoldDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const drawerIconNames = [
      "Settings",
      "Customer Support",
      "Privacy Policy",
      "Terms of Service",
      "About Us",
      "Feedback"
    ];

    return Drawer(
      backgroundColor: const Color(0xfeC0E7FA),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/doctors_image.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Gap(10.h),
            Text(
              "App Version : 1.63.0",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: 400.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: ListView.builder(
                    itemCount: drawerIconNames.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      return ProfilePageTiles(
                        title: drawerIconNames[index],
                      );
                    }),
              ),
            ),
            Gap(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(context, "/"),
                child: Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: const Color(0xfeFF0000),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      "Log Out",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
              ),
            ),
            Gap(30.h)
          ],
        ),
      ),
    );
  }
}

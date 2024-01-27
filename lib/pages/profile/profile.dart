import 'package:app_dev_client_project_1/consts/consts.dart';
import 'package:app_dev_client_project_1/widgets/profile_widgets/profile_name.dart';
import 'package:app_dev_client_project_1/widgets/profile_widgets/profile_page_tiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});
  static String? useremail;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.spMin),
        child: Column(
          children: [
            Gap(20.h),
            ProfileNameCard(
              name: "Rajdeep",
              email: useremail ?? "xxxxx@gmail.com",
              phone: "+91 xxxxxxxxxxx",
            ),
            Gap(10.h),
            SizedBox(
              height: 500.h,
              child: ListView.builder(
                itemCount: profileOptions.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return ProfilePageTiles(
                    title: profileOptions[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

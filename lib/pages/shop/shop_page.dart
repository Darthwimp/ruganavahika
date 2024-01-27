import 'package:app_dev_client_project_1/consts/consts.dart';
import 'package:app_dev_client_project_1/widgets/shop_widgets/book_test_display.dart';
import 'package:app_dev_client_project_1/widgets/shop_widgets/search_tests.dart';
import 'package:app_dev_client_project_1/widgets/shop_widgets/test_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(10.h),
          const SearchTests(),
          Gap(15.h),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
              child: GridView.builder(
                shrinkWrap: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.w,
                  mainAxisSpacing: 2.h,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: testName.length,
                itemBuilder: (_, index) {
                  return TestCard(
                    iconNo: index,
                    testName: testName[index],
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  "Top Booked Tests",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ],
          ),
          Gap(10.h),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 10.h),
              child: SizedBox(
                height: 183.h,
                child: BookTestDisplay(ScrollController: scrollController),
              ),
            ),
          )
        ],
      ),
    );
  }
}

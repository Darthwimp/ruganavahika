import 'package:app_dev_client_project_1/consts/consts.dart';
import 'package:app_dev_client_project_1/widgets/care_plan_widgets/paragraph_card.dart';
import 'package:app_dev_client_project_1/widgets/care_plan_widgets/paragraph_card_small.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CarePlanPage extends StatelessWidget {
  const CarePlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
            //give border color line only at top
            border: Border(
              top: BorderSide(
                color: Color(0xfe0075FF),
                width: 1,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: double.infinity),
              Text(
                "Care Plan",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Color(0xfe0075FF), fontWeight: FontWeight.bold),
              ),
              Gap(25.h),
              ParagraphCard(text: carePlanMain),
              Gap(20.h),
              Text("Benefits", style: Theme.of(context).textTheme.displayLarge),
              Gap(10.h),
              SmallParagraphCard(text: costSaving, title: "Cost Savings"),
              SmallParagraphCard(text: convenience, title: "Convenience"),
              SmallParagraphCard(text: comprehensiveCoverage, title: "Comprehensive Coverage"),
              SmallParagraphCard(text: additionalFeatures, title: "Additional Features"),
              Gap(20.h),
              Text("Select your plan",style: Theme.of(context).textTheme.displayLarge),
              Gap(10.h),
              Image.asset("assets/images/health_plans.png"),
              Gap(10.h)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:app_dev_client_project_1/consts/medical_report_data.dart';
import 'package:app_dev_client_project_1/widgets/home_widgets/medical_report_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicalReportDisplay extends StatelessWidget {
  const MedicalReportDisplay({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      margin: EdgeInsets.symmetric(horizontal: 27.sp),
      child: Scrollbar(
        controller: scrollController,
        child: ListView.builder(
          itemCount: reportDate.length,
          scrollDirection: Axis.vertical,
          controller: scrollController,
          itemBuilder: (_, index) {
            return MedicalReport(date: reportDate[index]);
          },
        ),
      ),
    );
  }
}

import 'package:app_dev_client_project_1/widgets/hospital_widgets/filter_dialog.dart';
import 'package:app_dev_client_project_1/widgets/hospital_widgets/ambulance_name_display.dart';
import 'package:app_dev_client_project_1/widgets/hospital_widgets/info_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HospitalPage extends StatefulWidget {
  const HospitalPage({super.key});

  @override
  State<HospitalPage> createState() => _HospitalPageState();
}

class _HospitalPageState extends State<HospitalPage> {
  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController(
      initialScrollOffset: 0,
    );

    return Scaffold(
      backgroundColor: const Color(0xfeBBE5ED),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: InteractiveViewer(
                    panEnabled: true,
                    panAxis: PanAxis.free,
                    constrained: false,
                    child: Image.asset(
                      "assets/images/map.jpg", fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Row(
                    children: [
                      Gap(2.w),
                      GestureDetector(
                        onTap: () => infoDialogBuilder(context),
                        child: Container(
                          width: 192.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.r),
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  size: 14.sp,
                                  color: Colors.white,
                                ),
                                Text(
                                  " Info",
                                  style: Theme.of(context).textTheme.labelMedium,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Gap(2.w),
                      GestureDetector(
                        onTap: () => filterDialogBuilder(context),
                        child: Container(
                          width: 193.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50.r)),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.filter_alt_outlined,
                                  size: 14.sp,
                                  color: Colors.white,
                                ),
                                Text(
                                  " Filter",
                                  style: Theme.of(context).textTheme.labelMedium,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 10.h),
              height: MediaQuery.of(context).size.height * 0.27,
              padding: EdgeInsets.only(right: 10.w),
              child: HospitalNameDisplay(scrollController: scrollController),
            ),
          )
        ],
      ),
    );
  }
}

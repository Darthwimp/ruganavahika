import 'package:app_dev_client_project_1/consts/consts.dart';
import 'package:app_dev_client_project_1/widgets/home_widgets/home_page_grid_widget.dart';
import 'package:app_dev_client_project_1/widgets/home_widgets/location_display.dart';
import 'package:app_dev_client_project_1/widgets/home_widgets/medical_report_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Color _tabColor1 = Colors.black;
    Color _tabColor2 = Colors.black;
    final ScrollController _scrollController = ScrollController(
      initialScrollOffset: 0,
    );

    return Column(
      children: [
        Container(
          height: 130.h,
          width: double.infinity,
          padding: EdgeInsets.only(left: 44.w, bottom: 27.h),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, John Doe!",
                style: TextStyle(fontSize: 24.h, fontWeight: FontWeight.bold),
              ),
              Text(
                "How can we assist you toaday?",
                style: TextStyle(fontSize: 15.h),
              ),
              SizedBox(
                height: 20.h,
              ),
              const LocationDisplay(),
            ],
          ),
        ),
        Container(
          height: 44.h,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  _tabColor1 = Color(0xfe0075FF);
                }),
                child: AbsorbPointer(
                  child: Container(
                    height: 44.h,
                    width: 192.w,
                    decoration: BoxDecoration(
                      color: _tabColor1,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(56.r),
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.wc,
                        color: Colors.white,
                        size: 27.h,
                      ),
                    ),
                  ),
                ),
              ),
              Gap(2.w),
              GestureDetector(
                onTap: () => setState(() {
                  _tabColor2 = Color(0xfe0075FF);
                }),
                child: Container(
                  height: 44.h,
                  width: 192.w,
                  decoration: BoxDecoration(
                    color: _tabColor2,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(56.r),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.pets,
                      color: Colors.white,
                      size: 27.h,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Gap(32.h),
        Container(
          padding: EdgeInsets.only(left: 14.w),
          width: 240.w,
          height: 20.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.r), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search", style: TextStyle(fontSize: 12.h)),
              Container(
                height: 20.h,
                width: 20.w,
                color: const Color(0xfe0075FF),
                child: Center(
                  child: Icon(Icons.search, color: Colors.white, size: 15.h),
                ),
              )
            ],
          ),
        ),
        Gap(32.h),
        SizedBox(
          height: 225.h,
          width: 335.w,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 11.w,
              mainAxisSpacing: 11.h,
              childAspectRatio: 1.1,
            ),
            itemCount: 6,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              return GestureDetector(
                onTap: () {
                  if (index == 1) {
                    Navigator.pushNamed(context, "/home/ambulance");
                  }
                  if (index == 2){
                    Navigator.pushNamed(context, "home/medicine");
                  }
                },
                child: HomePageGridWidget(
                  iconNo: index,
                  label: labels[index],
                  color: colors[index],
                ),
              );
            },
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(27.w),
            Text(
              "Medical History",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        Gap(10.h),
        MedicalReportDisplay(scrollController: _scrollController)
      ],
    );
  }
}

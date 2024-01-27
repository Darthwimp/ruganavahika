import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PriceFilterSlider extends StatefulWidget {
  const PriceFilterSlider({super.key});

  @override
  State<PriceFilterSlider> createState() => PriceFilterSliderState();
}

class PriceFilterSliderState extends State<PriceFilterSlider> {
  double currentValue = 0;
  bool checkedValue1 = false;
  bool checkedValue2 = false;

  void _onChanged(bool value) {
    setState(() {
      value = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Slider(
          value: currentValue,
          max: 5000,
          label: "₹ ${currentValue.toInt()}",
          onChanged: (value) {
            setState(() {
              currentValue = value;
            });
          },
        ),
        Gap(15.h),
        Text(
          "Choose Category",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        SizedBox(
          height: 40.h,
          child: CheckboxListTile(
            tristate: true,
            value: checkedValue1,
            splashRadius: 0,
            title: Text("Government", style: Theme.of(context).textTheme.labelMedium),
            activeColor: const Color(0xfe0075FF),
            checkColor: Colors.white,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (bool? value) {
              setState(() {
                checkedValue1 = !checkedValue1;
              });
            },
          ),
        ),
        SizedBox(
          height: 40.h,
          child: CheckboxListTile(
            tristate: true,
            value: checkedValue2,
            title: Text("Public", style: Theme.of(context).textTheme.labelMedium),
            activeColor: const Color(0xfe0075FF),
            checkColor: Colors.white,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (bool? value) {
              setState(() {
                checkedValue2 = !checkedValue2;
              });
            },
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BookingConfirmedPage extends StatefulWidget {
  const BookingConfirmedPage({super.key});

  @override
  _BookingConfirmedPageState createState() => _BookingConfirmedPageState();
}

class _BookingConfirmedPageState extends State<BookingConfirmedPage> {
  bool _isLoading = true;
  String appBarTitle = "Booking in Progress";

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _isLoading = false;
        appBarTitle = "Booking Confirmed";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle, style: Theme.of(context).textTheme.labelLarge,),
        backgroundColor: const Color(0xfeBBE5ED),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xfeBBE5ED),
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator(
                color: Color(0xfe0075FF),
                
              )
            : Container(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 100.sp,
                      color: Colors.green,
                    ),
                    Gap(15.sp),
                    Text(
                      'Your booking is confirmed',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Gap(10.sp),
                    Text(
                      "The details have been sent to your registered mobile number",
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge
                          ?.copyWith(fontSize: 15.sp),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}

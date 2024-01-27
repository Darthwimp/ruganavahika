import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:app_dev_client_project_1/pages/home_page.dart';
import 'package:app_dev_client_project_1/pages/profile/profile.dart';
import 'package:app_dev_client_project_1/widgets/sign_in_widgets/sign_in_text_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController passController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SvgPicture.asset(
          "assets/images/logo_thicker.svg",
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: SizedBox(
              child: Stack(
                children: [
                  Positioned(
                    top: 40.h,
                    child: Image.asset("assets/images/sign_in_bg.png"),
                  ),
                  Image.asset("assets/images/Group_191.png"),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 440.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xfeBBE5ED),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.r),
                    topRight: Radius.circular(60.r),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 45.w, vertical: 22.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Text(
                          "Sign In",
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    fontSize: 30.sp,
                                    color: const Color(0xfe0075FF),
                                  ),
                        ),
                      ),
                      Gap(12.h),
                      SignInTextField(
                          controller: emailController,
                          placeHolder: "Enter your email / phone number"),
                      Gap(12.h),
                      SignInTextField(
                          controller: passController,
                          placeHolder: "Enter your password"),
                      Gap(12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password?",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  fontSize: 13.sp,
                                  color: const Color(0xfe2E3532),
                                ),
                          ),
                        ],
                      ),
                      Gap(12.h),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            MyProfile.useremail = emailController.text;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(
                                  userEmail: emailController.text.toString(),
                                ),
                              ),
                            );
                          },
                          child: Text(
                            "Login",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ),
                      Gap(5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "or",
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                      Gap(5.h),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: Theme.of(context)
                              .elevatedButtonTheme
                              .style
                              ?.copyWith(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xfe2E3532),
                                ),
                              ),
                          child: Text(
                            "Sign in with Google",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ),
                      Gap(5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: Color(0xfe2E3532),
                                ),
                          ),
                          Text(
                            "Sign Up",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: const Color(0xfe0075FF),
                                  fontWeight: FontWeight.bold,
                                ),
                          )
                        ],
                      ),
                      Gap(15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, "/home");
                            },
                            child: Text(
                              "Skip Sign in for Emergency",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: const Color(0xfe0075FF),
                                    fontSize: 15.sp,
                                  ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

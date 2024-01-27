import 'package:app_dev_client_project_1/consts/open_camera.dart';
import 'package:app_dev_client_project_1/pages/care_plan/care_plan.dart';
import 'package:flutter/material.dart';
import 'package:app_dev_client_project_1/pages/home_page.dart';
import 'package:app_dev_client_project_1/pages/hospital/booking_confirmed.dart';
import 'package:app_dev_client_project_1/pages/hospital/hospital_page.dart';
import 'package:app_dev_client_project_1/pages/login/sign_in.dart';
import 'package:app_dev_client_project_1/pages/medicine/medicine.dart';
import 'package:app_dev_client_project_1/pages/medicine/upload_prescription.dart';

Map<String,WidgetBuilder> routes = {
  "/": (context) => const SignIn(),
  "/home" : (context) => const HomePage(),
  "/care_plan" : (context) => const CarePlanPage(),
  "/booking" : (context) => const BookingConfirmedPage(),
  "/home/ambulance" :(context) => const HospitalPage(),
  "home/medicine" :(context) => const MedicinePage(),
  "/home/medicine/order" :(context) => const UploadPrescriptionPage(),
  "/home/medicine/order/camera" :(context) =>  const CameraPage()
};
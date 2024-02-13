import 'package:doctor_appointment_app/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() async {
  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}

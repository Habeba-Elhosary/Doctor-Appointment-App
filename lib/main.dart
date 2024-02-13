import 'package:doctor_appointment_app/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() {
  setUpGetIt();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}

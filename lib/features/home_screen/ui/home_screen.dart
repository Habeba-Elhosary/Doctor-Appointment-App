import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Screen',
        )
      ),
      body: Center(
        child: Text(
          'Home Screen is working',
          style: TextStyle(fontSize: 20.sp),
        ),
      ),
    );
  }
}

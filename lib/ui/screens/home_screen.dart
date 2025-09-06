import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design_app/ui/screens/team_section.dart';
import '../widgets/home_page_widgets/contact_us_section.dart';
import '../widgets/home_page_widgets/about_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
    body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(5.h, 20.h, 5.h, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AboutSection(),
            SizedBox(height: 20.h),
            TeamSection(),
            ContactUsSection(width: width)]),
      ),
    ));
  }
 }


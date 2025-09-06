import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design_app/shared/widgets/custom_text.dart';

class TeamCarouselItem extends StatelessWidget {
  const TeamCarouselItem({
    super.key,
    required this.name,
    required this.position,
    required this.details,
    required this.color,
    required this.photo,
  });

  final String name;
  final String position;
  final String details;
  final Color color;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 48),
          padding: EdgeInsets.all(5),
          height: 140, // Slightly increased height
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: name,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  SizedBox(height: 3),
                  CustomText(
                    text: position,
                  //  fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 3.h),
                  CustomText(
                    text: details,
                    fontSize: 12.sp,
                    color: Colors.white,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            child: CircleAvatar(
              radius: 38.0,
              backgroundImage: AssetImage(photo),
            ),
          ),
        ),
      ],
    );
  }
}

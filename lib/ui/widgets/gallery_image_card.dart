import 'package:flutter/material.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:flutter_flip_card/flipcard/flip_card.dart';
import 'package:flutter_flip_card/modal/flip_side.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design_app/shared/widgets/custom_text.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.imageFront,
    required this.controller,
    required this.description,
  });

  final String description;
  final String imageFront;
  final FlipCardController controller;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      frontWidget: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          height: 210.h,
          width: 210.w,
          child: Image.asset(
            imageFront,
            fit: BoxFit.cover,
          ),
        ),
      ),
      backWidget: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16), // 🔹 نفس الانحناء للخلف
      color: Colors.white,
      ),

        child: Center(
          child: CustomText(
            text: description,
            fontSize: 12.sp,
          ),
        ),
      ),
      controller: controller,
      rotateSide: RotateSide.right,
      onTapFlipping: true,
    );
  }
}

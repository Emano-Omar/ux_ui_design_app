import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design_app/shared/widgets/custom_text.dart';
import '../../../shared/colors.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  static const double _paddingLeft = 12.0;
  static const double _mainColumnWidth = 200;
  static const double _imageHeight = 280;
  static const double _spacingSmall = 4;
  static const double _spacingLarge = 7;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: _paddingLeft),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextColumn(),
         // const SizedBox(width: 5),
          _buildImageColumn(),
        ],
      ),
    );
  }

  Widget _buildTextColumn() {
    return SizedBox(
      width: _mainColumnWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text:
            'A distinguished agricultural scientific research center to achieve sustainable development',
            fontSize: 21.sp,
            color: AppColors.darkBlue,
            fontWeight: FontWeight.w900,
          ),
          SizedBox(height: _spacingLarge),
          CustomText(
            text:
            'This center is responsible for carrying out agricultural scientific research and technology transfer at the national level.',
            fontSize: 13.sp,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget _buildImageColumn() {
    return SizedBox(
      height: _imageHeight,
      width: 155,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSingleImage('assets/images/about_us/area1.jpg', 80, _imageHeight),
          const SizedBox(width: _spacingSmall),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset('assets/images/about_us/area5.jpg', fit: BoxFit.fill),
                ),
                const SizedBox(height: 5),//_spacingSmall
                Expanded(
                  child: Image.asset('assets/images/about_us/area3.jpg', fit: BoxFit.fill),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }

  Widget _buildSingleImage(String path, double width, double height) {
    return Image.asset(
      path,
      width: width,
      height: height,
      fit: BoxFit.fill,
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/colors.dart';
import '../../../shared/widgets/custom_text.dart';

class ContactUsSection extends StatelessWidget {
  const ContactUsSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: width,
      padding: EdgeInsets.all(10),
      color: AppColors.darkBlue,
      child: Row(
        children:
        [
          Expanded(
            child: SizedBox(
              width: width,
              height: 300.h,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Row(
                      children:
                      [
                        CustomText(
                          text: "Phone: ",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5.w),
                        const Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5.w),
                        CustomText(
                          text: "0096264521478",
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),

                    SizedBox(height: 15.h,),
                    Row(
                      children:
                      [
                        CustomText(
                          text: "Email: ",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        SizedBox(width: 11.w),
                        const Icon(Icons.mail,
                          color: Colors.white, size: 20,),
                        SizedBox(width: 5.w),
                        CustomText(
                          text: "info@narc.gov.com",
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Image.asset(
                "assets/images/contact_us/icons-linkedin.png",
                height: 30.h,
              ),
              SizedBox(height: 10.h),
              Image.asset(
                "assets/images/contact_us/Instagram.png",
                height: 30.h,
              ),
              SizedBox(height: 10.h),
              Image.asset(
                "assets/images/contact_us/Facebook.png",
                height: 30.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
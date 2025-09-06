import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/trees_model/trees_model.dart';
import '../../../shared/widgets/custom_text.dart';

class InfoListViewItem extends StatelessWidget {
  const InfoListViewItem({
    super.key,
    required this.index,
    required this.tree,
    required this.selectedImage,
    required this.onTap,
  });

  final int index;
  final Tree tree;
  final int? selectedImage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    bool isSelected = selectedImage == index;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          AnimatedContainer(
            curve: Curves.fastOutSlowIn,
            duration: const Duration(milliseconds: 300),
            height: 350.h,
            width: isSelected ? 200.w : 120.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                tree.treeImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (isSelected)
            Positioned(
              top: 120,
              left: 20,
              child: SizedBox(
                height: 200.h,
                width: 150.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: tree.treeName,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: const [
                        Shadow(
                          blurRadius: 8,
                          color: Colors.black45,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: tree.treeDescription,
                      fontSize: 12.sp,
                      color: Colors.white,
                      shadows: const [
                        Shadow(
                          blurRadius: 8,
                          color: Colors.black45,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

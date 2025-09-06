import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/trees_model/trees_data.dart';
import 'info_list_view_item.dart';

class InfoListView extends StatefulWidget {
  const InfoListView({super.key, required this.width});

  final double width;

  @override
  State<InfoListView> createState() => _InfoListViewState();
}

class _InfoListViewState extends State<InfoListView> {
  int? selectedImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      width: widget.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: TreesData().treesList.length,
        itemBuilder: (context, int index) {
          final tree = TreesData().treesList[index];

          return InfoListViewItem(
            index: index,
            tree: tree,
            selectedImage: selectedImage,
            onTap: () {
              setState(() {
                selectedImage = (selectedImage == index) ? null : index;
              });
            },
          );
        },
      ),
    );
  }
}


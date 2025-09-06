import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/info_screen_widgets/info_list_view.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.h, 50.h, 20.h, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoListView(width: width),
            ],
          ),
        ),
      ),
    );
  }
}

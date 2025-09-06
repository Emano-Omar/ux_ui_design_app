import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/widgets/custom_text.dart';
import 'gallery_screen.dart';
import 'home_screen.dart';
import 'info_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const double _appBarHeight = 100;
  static const int _tabCount = 3;
  static const List<String> _tabTitles = ['Home', 'Info', 'Gallery'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabCount,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: TabBarView(
          children: [
            const HomeScreen(),
            const InfoScreen(),
            GalleryScreen(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(_appBarHeight),
      child: AppBar(
        title: _buildTitle(),
        bottom: _buildTabBar(),
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: 'NARC',
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      tabs: _tabTitles.map((title) => Tab(text: title)).toList(),
      labelColor: Colors.black,
      indicatorColor: Colors.black,
    );
  }
}


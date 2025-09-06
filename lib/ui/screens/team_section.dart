import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design_app/shared/colors.dart';
import '../../models/team_members_model/team_data.dart';
import '../../models/team_members_model/team_model.dart';
import '../../shared/widgets/components.dart';
import '../../shared/widgets/custom_text.dart';
import '../widgets/team_carousel_item.dart';

class TeamSection extends StatefulWidget {
  const TeamSection({super.key});

  @override
  State<TeamSection> createState() => _TeamSectionState();
}

class _TeamSectionState extends State<TeamSection> {
  int? currentSelected;

  final List<Team> teamList = teamDataList;

  static const double _sectionHeight = 310;
  static const double _carouselHeight = 240;
  static const double _viewportFraction = 0.5;
  static const double _enlargeFactor = 0.4;
  static const double _spacing = 10;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Container(
      height: _sectionHeight,
      width: width,
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: _spacing),
          _buildCarousel(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Team members",
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
        customDivider(),
      ],
    );
  }

  Widget _buildCarousel() {
    return CarouselSlider.builder(
      itemCount: teamList.length,
      itemBuilder: (BuildContext context, int index, int pageViewIndex) {
        final team = teamList[index];
        final isSelected = currentSelected == index;
        return TeamCarouselItem(
          name: team.name,
          position: team.position,
          details: team.details,
          color: isSelected ? AppColors.darkBlue : AppColors.lightBlue,
          photo: team.photo,
        );
      },
      options: CarouselOptions(
        height: _carouselHeight,
        aspectRatio: 16 / 9,
        viewportFraction: _viewportFraction,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: _enlargeFactor,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, reason) {
          setState(() => currentSelected = index);
        },
      ),
    );
  }
}


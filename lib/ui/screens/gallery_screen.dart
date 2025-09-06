import 'package:flutter/material.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import '../../models/gallery_model/display_data.dart';
import '../../models/team_members_model/team_data.dart';
import '../../models/team_members_model/team_model.dart';
import '../widgets/gallery_image_card.dart';

class GalleryScreen extends StatelessWidget {
   GalleryScreen({super.key});

  final List<Team> teamList = teamDataList;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(

      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
              itemCount: galleryList.length,
            itemBuilder: (context, index) {
            return ImageCard(
                controller: FlipCardController(),
                description: galleryList[index].description,
                imageFront: galleryList[index].image,
              );
            }
            ));
  }}

import 'package:flutter/material.dart';
import 'package:musicplayer/Pages/widgets/artiste_picture_section.dart';
import 'package:musicplayer/Pages/widgets/title_section.dart';

class ImageAuthor extends StatelessWidget {
  const ImageAuthor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('ariana.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: const [
          TitleSection(),
          ArtistePictureSection(),
        ],
      ),
    );
  }
}

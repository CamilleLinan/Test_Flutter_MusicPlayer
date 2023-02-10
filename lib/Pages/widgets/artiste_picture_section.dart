import 'package:flutter/material.dart';

class ArtistePictureSection extends StatelessWidget {
  const ArtistePictureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 200),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 65,
            child: Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            child: Container(
              height: 275,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('ariana.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.blue.withOpacity(1), BlendMode.darken),
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

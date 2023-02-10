import 'package:flutter/material.dart';
import 'package:musicplayer/Pages/widgets/appbar_page.dart';
import 'package:musicplayer/Pages/widgets/image_author_section.dart';
import 'package:musicplayer/Pages/widgets/player_control_section.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const MyAppBarPage(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              ImageAuthor(),
              PlayerControl(),
            ],
          ),
        ),
      ),
    );
  }
}

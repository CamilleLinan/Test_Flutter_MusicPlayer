import 'package:flutter/material.dart';
import 'package:musicplayer/Home/widgets/appbar.dart';
import 'package:musicplayer/Home/widgets/bottom_section.dart';
import 'package:musicplayer/Home/widgets/header_section.dart';
import 'package:musicplayer/Home/widgets/playlist_section.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderSection(),
            PlaylistSection(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomSection(),
    );
  }
}

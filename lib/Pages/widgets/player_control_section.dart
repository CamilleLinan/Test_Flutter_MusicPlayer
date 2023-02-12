import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerControl extends StatelessWidget {
  const PlayerControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          PlayingMusicTitle(),
          MusicSliderSection(),
          DurationSection(),
          MusicControlButtonSection(),
        ],
      ),
    );
  }
}

class PlayingMusicTitle extends StatelessWidget {
  const PlayingMusicTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Text(
            'Imagine',
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 3),
          Text(
            'Ariana Grande',
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black.withOpacity(0.6),
            ),
          )
        ],
      ),
    );
  }
}

class MusicSliderSection extends StatelessWidget {
  const MusicSliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Slider(
        value: 19,
        min: 1.0,
        max: 100,
        divisions: 10,
        activeColor: Colors.black,
        inactiveColor: Colors.grey.withOpacity(0.7),
        onChanged: (double newValue) {},
      ),
    );
  }
}

class DurationSection extends StatelessWidget {
  const DurationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 27, right: 27, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '1.08',
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          Text(
            '3.14',
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

class MusicControlButtonSection extends StatelessWidget {
  const MusicControlButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 15),
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconButton(
            icon: Icon(
              Icons.shuffle,
              color: Colors.grey,
              size: 35,
            ),
            onPressed: null,
          ),
          const IconButton(
            icon: Icon(
              Icons.skip_previous,
              color: Colors.black,
              size: 40,
            ),
            onPressed: null,
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const CircleBorder(),
                side: const BorderSide(
                  width: 1.0,
                  color: Colors.grey,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Icon(
                  Icons.pause,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
            ),
          ),
          const IconButton(
            icon: Icon(
              Icons.skip_next,
              color: Colors.black,
              size: 40,
            ),
            onPressed: null,
          ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const IconButton(
              icon: Icon(
                Icons.repeat,
                color: Colors.grey,
                size: 35,
              ),
              onPressed: null,
            ),
          ),
        ],
      ),
    );
  }
}

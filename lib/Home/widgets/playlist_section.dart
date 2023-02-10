import 'package:flutter/material.dart';

class PlaylistSection extends StatelessWidget {
  PlaylistSection({super.key});

  final List playlist = [
    {
      'title': 'No tears left to cry',
      'played': false,
      'duration': '3.16',
      'inFavorites': true,
    },
    {
      'title': 'Imagine',
      'played': true,
      'duration': '3.14',
      'inFavorites': true,
    },
    {
      'title': 'Into you',
      'played': false,
      'duration': '3.13',
      'inFavorites': false,
    },
    {
      'title': '34 35',
      'played': false,
      'duration': '3.26',
      'inFavorites': false,
    },
    {
      'title': 'positions',
      'played': false,
      'duration': '2.58',
      'inFavorites': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 40, 20, 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Text(
                  'Show all',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Column(
              children: playlist.map((song) {
            return SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    song['title'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight:
                          song['played'] ? FontWeight.w900 : FontWeight.w300,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(song['played'] ? Icons.bar_chart_rounded : null,
                          size: 22),
                      Icon(
                          song['inFavorites']
                              ? Icons.favorite_rounded
                              : Icons.favorite_border_rounded,
                          size: 22),
                    ],
                  ),
                ],
              ),
            );
          }).toList()),
        ],
      ),
    );
  }
}

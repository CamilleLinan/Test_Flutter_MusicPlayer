import 'package:flutter/material.dart';

class MyAppBarPage extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarPage({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.chevron_left,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: const [
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 23,
          ),
          onPressed: null,
        )
      ],
      backgroundColor: Colors.black.withOpacity(0),
    );
  }
}

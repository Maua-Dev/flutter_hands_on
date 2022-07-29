import 'package:flutter/material.dart';

class MobileAppbar extends StatelessWidget {
  const MobileAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'Flutter',
        style: TextStyle(color: Colors.white),
      ),
      actions: const [
        Icon(Icons.shopping_cart),
        SizedBox(
          width: 8,
        ),
        Icon(Icons.search),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}

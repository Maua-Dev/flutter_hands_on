import 'package:flutter/material.dart';

class TabletAppbar extends StatelessWidget {
  const TabletAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text(
            'Flutter',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 8),
          Expanded(
              child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Pesquise alguma coisa aqui',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade500,
                  )),
            ),
          )),
          const SizedBox(width: 8),
          const Icon(Icons.shopping_cart),
          const SizedBox(width: 8),
          ElevatedButton(
              onPressed: () {},
              child: const Text('Fazer Login'),
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.white, width: 2),
                  primary: Colors.black)),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Cadastre-se',
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white)),
          )
        ],
      ),
    );
  }
}

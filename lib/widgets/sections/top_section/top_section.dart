import 'package:flutter/material.dart';
import 'package:flutter_hands_on/utils.dart';

class TopSectionWidget extends StatelessWidget {
  const TopSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth > Utils.breakpointMobile
            ? SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 3.4,
                      child: Image.network(
                        'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 24,
                      child: Card(
                        elevation: 8,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(12),
                          width: 350,
                          color: Colors.black,
                          child: Column(children: [
                            const Text(
                              'Aprenda Flutter no seu tempo',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90. Qualidade garantida.',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            const SizedBox(height: 8),
                            TextField(
                              cursorColor: Colors.blue,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                hintStyle: const TextStyle(color: Colors.white),
                                hintText: 'Digite alguma busca aqui',
                                prefixIcon: const Icon(
                                  Icons.abc,
                                  color: Colors.white,
                                ),
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.search),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Column(
                children: [
                  AspectRatio(
                    aspectRatio: 3.4,
                    child: Image.network(
                      'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Aprenda Flutter no seu tempo',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90. Qualidade garantida.',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          cursorColor: Colors.blue,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintStyle: const TextStyle(color: Colors.white),
                            hintText: 'Digite alguma busca aqui',
                            prefixIcon: const Icon(
                              Icons.abc,
                              color: Colors.white,
                            ),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.search),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
      },
    );
  }
}

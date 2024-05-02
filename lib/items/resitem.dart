import 'package:flutter/material.dart';

class Ressourcesitem extends StatelessWidget {
  const Ressourcesitem({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 160 * width,
        height: 160 * height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(13)),
              child: Image.asset(
                'assets/anime-Profile-Pictures.jpg',
                width: 160 * width,
                height: 160 * height,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(13),
                ),
                color: Colors.black12.withOpacity(0.5),
              ),
            ),
            Positioned(
              top: 12 * height,
              left: 12 * width,
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 25 * height,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: width * 5,
                  ),
                  Text(
                    'Jane Cooper',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10 * width,
                      fontFamily: "AeonikTRIAL",
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: height * 5,
                left: 260 * width,
                right: 20 * width,
                child: IconButton(
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                    size: 25 * height,
                  ),
                  onPressed: () {},
                )),
            Positioned(
              top: 87 * height,
              left: 12 * width,
              child: Container(
                height: 18 * height,
                width: 47 * width,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Center(
                    child: Text(
                  'web dev',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 10 * width),
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 108 * height, left: 12 * width, right: 16 * width),
              child: SizedBox(
                height: 5 * height,
                width: 195 * width,
                child: Wrap(
                  children: [
                    Text(
                      'Digital Despach: Tech Inshights',
                      style: TextStyle(
                          fontSize: 13.5 * width,
                          height: 1.2,
                          fontFamily: "AeonikTRIAL",
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

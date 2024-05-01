import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlogsList extends StatefulWidget {
  BlogsList({super.key, required this.chek});
  int chek;

  @override
  State<BlogsList> createState() => _BlogsListState();
}

class _BlogsListState extends State<BlogsList> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;
    return Column(
      children: [
        if (widget.chek == 0)
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(
              height: 10 * height,
            ),
            SizedBox(
              height: 25 * height,
              width: 175 * width,
              child: Text(
                'Blog of The Week',
                style: TextStyle(
                    fontSize: 21 * width,
                    height: 1,
                    
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 4 * height,
            ),
            SizedBox(
              height: 14 * height,
              width: 135 * width,
              child: Text(
                'Tranding blogs and news',
                style: TextStyle(
                    height: 1,
                    fontSize: 11 * width,
                    color: Color.fromARGB(206, 49, 54, 56),
                    fontFamily: AutofillHints.addressCity),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10 * height,
            ),
          ]),
        Padding(
          padding: EdgeInsets.only(top: 5 * height, bottom: 5 * height),
          child: Container(
            width: 312 * width,
            height: 182 * height,
            decoration: const BoxDecoration(
              border: Border(),
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Image.asset(
                    'assets/anime-Profile-Pictures.jpg',
                    width: 312 * width,
                    height: 182 * height,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                    color: Colors.black12.withOpacity(0.5),
                  ),
                ),
                Positioned(
                  top: 10 * height,
                  left: 16 * width,
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
                        'Jane Cooper. 5 days',
                        style: TextStyle(
                            color: Colors.white, fontSize: 10 * width),
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
                  top: 96 * height,
                  left: 16 * width,
                  child: Container(
                    height: 18 * height,
                    width: 47 * width,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, 'blogsds'),
                      child: Center(
                          child: Text(
                        'Touch',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: AutofillHints.addressCity,
                            fontSize: 10 * width),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 122 * height, left: 16 * width, right: 16 * width),
                  child: SizedBox(
                    height: 5 * height,
                    width: 195 * width,
                    child: Wrap(
                      children: [
                        Text(
                          'Digital Despach: Tech Inshights',
                          style: TextStyle(
                              fontSize: 18 * width,
                              height: 1.2,
                              fontFamily: AutofillHints.addressCity,
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
        ),
      ],
    );
  }
}

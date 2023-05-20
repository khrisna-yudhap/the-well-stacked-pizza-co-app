import 'package:final_project/pages/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            height: 100,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "\$ 5",
                    style: TextStyle(
                        color: HexColor("FFA235"),
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(" /pax",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      )),
                  const SizedBox(
                    width: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 40),
                      backgroundColor: HexColor("#B32B1B"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const MainMenu();
                      }));
                    },
                    child: const Text(
                      "Order Now",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ]),
          ),
        ),
        body: ListView(children: [
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width,
                    width: double.infinity,
                    child: const Image(
                      image: AssetImage('assets/thebuster.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(30),
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About The Buster",
                          style: TextStyle(
                            color: HexColor("#B32B1B"),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "The perfect combination of seasoned chicken pieces, crispy rasher bacon & slices of red onion on a BBQ sauce base. With mozzarella and chili sauce on top with blackpaper garniche.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Other Menu",
                          style: TextStyle(
                            color: HexColor("#B32B1B"),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/thumbnails/thumb_doubledluxe.png'),
                              height: 80,
                            ),
                            Image(
                              image: AssetImage(
                                  'assets/thumbnails/thumb_thefullrack.png'),
                              height: 80,
                            ),
                            Image(
                              image: AssetImage(
                                  'assets/thumbnails/thumb_trippledluxe.png'),
                              height: 80,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Include",
                          style: TextStyle(
                              fontSize: 18,
                              color: HexColor("#B32B1B"),
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_circle_outline,
                              color: HexColor("#B32B1B"),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "One Big Soda",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.check_circle_outline,
                                color: HexColor("#B32B1B")),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Dipping Sauce",
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}

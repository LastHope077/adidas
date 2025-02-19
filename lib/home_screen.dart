import 'package:adidas/adiclub_screen.dart';
import 'package:adidas/favorites_screen.dart';
import 'package:adidas/search_screen.dart';
import 'package:adidas/shopping_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(color: Color.fromARGB(255, 240, 240, 240)),
                    bottom: BorderSide(color: Color.fromARGB(255, 240, 240, 240),
                    )),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                      weight: 0.1, // Use size instead of weight
                    ),
                  ),
                  Text(
                    "Find products",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Colors.grey.shade400,
                        letterSpacing: .5,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color.fromARGB(255, 240, 240, 240)),
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 240, 240, 240),
                  ),
                ),
              ),
              child: const Text("WOMEN MEN KIDS",textAlign: TextAlign.left),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 180,
                      child: Image.asset(
                        'assets/images/promotions.png',
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),

                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(255, 222, 222, 222), // Bottom border color
                          ),
                        ),
                      ),
                      child: ListTile(
                        minVerticalPadding: 0,
                        leading: Image.asset(
                          'assets/icons/shoes.png',
                          width: 35,
                          height: 35,
                        ),
                        title: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text("SHOES"),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {},
                      ),
                    ),

                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(255, 222, 222, 222), // Bottom border color
                          ),
                        ),
                      ),
                      child: ListTile(
                        minVerticalPadding: 0,
                        leading: Image.asset(
                          'assets/icons/clothing.png',
                          width: 35,
                          height: 35,
                        ),
                        title: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text("CLOTHING"),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {},
                      ),
                      ),

                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(255, 222, 222, 222), // Bottom border color
                          ),
                        ),
                      ),
                      child: ListTile(
                        minVerticalPadding: 0,
                        leading: Image.asset(
                          'assets/icons/accessories.png',
                          width: 35,
                          height: 35,
                        ),
                        title: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text("ACCESSORIES"),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {},
                      ),
                      ),
                       Padding(
                  padding: const EdgeInsets.all(10),
                  child: GridView.count(
                    childAspectRatio:
                        2, //ใช้กำหนดความสูงของแต่ละ Widget ใน Gridview
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      _buildGridItem(Icons.percent, 'SALE'),
                      _buildGridItem(Icons.directions_run, 'SPORT'),
                      _buildGridItem(
                          Icons.local_fire_department, 'NEW & TRENDING'),
                      _buildGridItem(Icons.card_giftcard, 'GIFT CARDS'),
                    ],
                  ),
                ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
    Widget _buildGridItem(IconData icon, String label) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(width: 0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30),
          const SizedBox(height: 2),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

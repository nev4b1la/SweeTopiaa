import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/models/items.dart';

class itemPage extends StatelessWidget {
  const itemPage({
    Key? key,
  }) : super(key: key);

  get item => null;

  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    child: Image.network(
                      itemArgs.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                child: Text(
                  itemArgs.name,
                  style: GoogleFonts.nunito(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Price :",
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(width: 5),
                      Text(
                        itemArgs.price,
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Rating :",
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(width: 5),
                      Wrap(
                        children: List.generate(
                          itemArgs.star,
                          (index) => Icon(
                            Icons.star,
                            color: Color(0xffFFD23F),
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Description :",
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 5),
                  Text(
                    itemArgs.deskripsi,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

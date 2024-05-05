import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/pages/homePage.dart';
import 'package:online_shop/pages/movieList.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Vanilla',
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              accountEmail: Text(
                'CheesecakeManis@gmail.com',
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    "lib/images/river.png",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xffFFEBB2),
              ),
            ),
            buildMenuItem(
              text: 'Food',
              icon: Icons.fastfood,
              onClicked: () => selectedItem(context, 0),
            ),
            Divider(),
            buildMenuItem(
              text: 'Movie',
              icon: Icons.movie,
              onClicked: () => selectedItem(context, 1),
            ),
            Divider()
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black;
    final hoverColor = Colors.grey[300];

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: GoogleFonts.nunito(color: color, fontWeight: FontWeight.bold),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => homePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Movielist(),
        ));
        break;
    }
  }
}

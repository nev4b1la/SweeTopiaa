import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/models/items.dart';

class popular extends StatelessWidget {
  popular({super.key});

  final List<Item> items = [
    Item(
      name: "Cheese Cake",
      price: "10.00",
      deskripsi:
          "Cheesecake is a rich and creamy dessert made from a mixture of cream cheese, sugar, and eggs on a crust, often made with crushed cookies or graham crackers. Baked to perfection, cheesecake has a smooth texture and can be topped with fruit compote, chocolate, or other delicious toppings, making it a classic and indulgent dessert.",
      image: "lib/images/cheesecake.jpg",
      star: 5,
    ),
    Item(
      name: "Ice Cream",
      price: "3.00",
      deskripsi:
          "Made from a base of milk, cream, sugar, and often eggs, it is churned while freezing to create a smooth consistency. Whether enjoyed in a cone, cup, or as part of a sundae, ice cream offers a refreshing and sweet treat, perfect for cooling down on a warm day.",
      image: "lib/images/iceCream.jpg",
      star: 5,
    ),
    Item(
      name: "Macaron",
      price: "7.00",
      deskripsi:
          "A macaron is a delightful French pastry characterized by its round, flat shape and a filling sandwiched between two meringue-based cookies. The outer layer is crisp, while the inside is soft and chewy. Macarons come in various colors and flavors, offering a visually appealing and tasty treat.",
      image: "lib/images/macaron.jpg",
      star: 4,
    ),
    Item(
      name: "Mangoo Coconut",
      price: "5.00",
      deskripsi:
          "Mango Coconut Pudding is a tropical delight featuring layers of creamy coconut pudding and sweet, ripe mango puree. The dessert offers a perfect blend of velvety coconut richness and fruity mango sweetness, creating a visually appealing and indulgent treat.",
      image: "lib/images/manggoCoconut.jpg",
      star: 4,
    ),
    Item(
      name: "Candy Cane",
      price: "5.00",
      deskripsi:
          "Made from sugar, corn syrup, and peppermint flavoring, candy canes are often shaped like a cane or walking stick. These sweet confections are not only visually appealing but also offer a refreshing minty taste, making them a popular choice during the festive season.",
      image: "lib/images/candyCane.jpg",
      star: 4,
    ),
    Item(
      name: "Apple Pie",
      price: "9.50",
      deskripsi:
          "It consists of a flaky pie crust filled with a delicious mixture of sliced apples, sugar, and spices like cinnamon and nutmeg. The pie is then baked to golden perfection, resulting in a warm, aromatic, and utterly satisfying dessert. Often enjoyed with a scoop of vanilla ice cream, apple pie captures the essence of home-baked goodness.",
      image: "lib/images/applePie.jpg",
      star: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Our Best Dessert",
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "See all",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (150 / 159),
            ),
            shrinkWrap: true,
            itemCount: items.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: Stack(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFEADD),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffFF8B8B).withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 8,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(item.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFEFBF6),
                        ),
                        width: 200,
                        height: 70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: GoogleFonts.nunito(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Wrap(
                              children: List.generate(
                                item.star,
                                (index) => Icon(
                                  Icons.star,
                                  color: Color(0xffFFD23F),
                                  size: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

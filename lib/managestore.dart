import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:uidesign/classes/cardclass.dart';
import 'package:uidesign/widgets/customwidgets.dart';

class ManageStore extends StatelessWidget {
  const ManageStore({super.key});

  @override
  Widget build(BuildContext context) {
    bool lastBar = false;
    List<CardValues> cardList = [
      const CardValues(
          heading: 'Marketing Designs',
          icon: FontAwesome.volume_up,
          colour: Colors.orange),
      const CardValues(
          heading: 'Online Payments',
          icon: FontAwesome.rupee,
          colour: Colors.lightGreen),
      const CardValues(
          heading: 'Discount Coupons',
          icon: Icons.discount,
          colour: Colors.amber),
      const CardValues(
          heading: 'My Customers',
          icon: FontAwesome.users,
          colour: Colors.green),
      const CardValues(
          heading: 'Store QR Code',
          icon: FontAwesome.qrcode,
          colour: Colors.grey),
      const CardValues(
          heading: 'Extra Charges',
          icon: FontAwesome.money,
          colour: Colors.purple),
      const CardValues(
          heading: 'Order Form',
          icon: FontAwesome.doc_text,
          colour: Colors.pink),
    ];

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(
              child: Text(
            'Manage Store',
          )),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            currentIndex: 3,
            elevation: 8,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              const BottomNavigationBarItem(
                  icon: Icon(FontAwesome.cart_plus), label: 'Orders',backgroundColor: Colors.white),
              const BottomNavigationBarItem(
                  icon: Icon(FontAwesome.box), label: 'Products'),
              const BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Manage',
              ),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined), label: 'Account'),
            ]),
        body: SafeArea(
            child: Container(
          padding: const EdgeInsets.all(15),
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: (1 / .7),
            children: List.generate(cardList.length, (index) {
              if (index == (cardList.length - 1)) {
                lastBar = true;
              } else {
                lastBar = false;
              }
              return cardWidget(cardElementOne(lastBar, cardList[index]),
                  cardElementTwo(cardList[index]),Colors.white);
            }),
          ),
        )));
  }

  cardElementOne(bool lastBar, CardValues cardlist) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: cardlist.colour, borderRadius: BorderRadius.circular(5)),
          child: Icon(
            cardlist.icon,
            color: Colors.white,
            size: 18,
          )),
      latestBanner(lastBar),
    ]);
  }

  cardElementTwo(CardValues cardlist) {
    return SizedBox(
        width: 110,
        child: Text(cardlist.heading,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 20, letterSpacing: .4)));
  }
}

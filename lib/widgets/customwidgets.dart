import 'package:flutter/material.dart';
import 'package:uidesign/classes/cardclass.dart';

listWidget(
    {Widget? leadingIcon,
    Widget? titleWidget,
    Widget? subtitleWidget,
    Widget? trailingIcon}) {
  return ListTile(
    leading: leadingIcon,
    trailing: trailingIcon,
    title: titleWidget,
    subtitle: subtitleWidget,
  );
}
//card section

latestBanner(bool status) {
  if (status == true) {
    return Container(
        width: 50,
        height: 24,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(5)),
        child: const Center(
            child: Text(
          'NEW',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        )));
  }
  return const SizedBox();
}

cardWidget(Widget itemOne, Widget itemTwo, Color color) {
  return Card(
      color: color,
      child: Container(
        padding:
            const EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              itemOne,
              const SizedBox(
                height: 10,
              ),
              itemTwo,
            ]),
      ));
}

//row col list

actionRowColList(
    Widget mainTitle, Widget leftElementOne, Widget leftElementTwo) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      mainTitle,
      Row(
        children: [leftElementOne, leftElementTwo],
      )
    ],
  );
}

//expansion tile widget

expansionSectionWidget(String titletext, String subtext) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration:
          const BoxDecoration(border: Border(bottom: BorderSide(width: 0.2))),
      child: ExpansionTile(
        title: Text(titletext),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: Text(
              subtext,
            ),
          ),
        ],
      ),
    ),
  );
}

//image border container

circularBorder(Widget element, double radius) {
  return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(100)),
      child: element);
}

//orders page text

ordersTextHeadingStyle(String head) {
  return Text(head,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700));
}

ordersTextTitleStyle(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  );
}

ordersSubTextStyle(String subtext) {
  return Text(subtext,
      style: TextStyle(
        fontSize: 16,
      ));
}

//product widget

productListWidget(
  String imgURL,
  String productname,
  String price,
) {
  bool isSwitched = true;
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    elevation: 10,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imgURL,
                fit: BoxFit.cover,
                height: 100, // set your height
                width: 110, // and width here
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productname,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                   
                    Text(
                      '1 Piece',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                   
                    Text(
                      'in stock',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   width: 10,
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.more_vert,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        //setState(() {
                        isSwitched = !isSwitched;
                      }),
                  //}),
                ],
              )
            ],
          ),
          const Divider(
            thickness: 1,
          ),
          TextButton.icon(
            onPressed: (() {}),
            icon: const Icon(
              Icons.share_outlined,
              color: Colors.black,
            ),
            label: const Text(
              'Share Product',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

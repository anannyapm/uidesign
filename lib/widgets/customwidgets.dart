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
  return Text(head, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700));
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

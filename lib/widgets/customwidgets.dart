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

cardWidget(Widget itemOne, Widget itemTwo,Color color) {
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

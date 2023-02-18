import 'package:flutter/material.dart';
import 'package:uidesign/widgets/customwidgets.dart';

topWidget() {
  return Column(children: [cardWidget(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            'Transaction Limit',
            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),
          ),
          const Text(
            'A free limit up to which you will recieve the online payments directly in your bank',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          const LinearProgressIndicator(
            value: (50000 - 36668) / 50000,
          ),
          const Text('36,668 left out of \u{20B9}50,000',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15)),
        ],
      ),
      ElevatedButton(onPressed: () {}, child: const Text('Increase Limit')),
      Colors.white),

      //list

      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 10,
          ),
          actionRowColList(const Text('Default Method',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),const Text('Online Payments',style: TextStyle(color: Colors.grey,fontSize: 15)),const Icon(Icons.keyboard_arrow_right,color: Colors.grey,)),
          actionRowColList(const Text('Payment Profile',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400)),const Text('Bank Account',style: TextStyle(color: Colors.grey,fontSize: 15)),const Icon(Icons.keyboard_arrow_right,color: Colors.grey,)),
        ],
      )
      
      ]);
}

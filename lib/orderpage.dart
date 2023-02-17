import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

import 'widgets/customwidgets.dart';

class ScreenOrder extends StatefulWidget {
  const ScreenOrder({super.key});

  @override
  State<ScreenOrder> createState() => _ScreenOrderState();
}

class _ScreenOrderState extends State<ScreenOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Order #1688068'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('MON 31, 05:42 PM'),
                  Row(
                    children: const [
                      Icon(
                        Icons.circle,
                        color: Colors.blue,
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Delivered',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 1.2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('1 ITEM',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    Row(
                      children: const [
                        Icon(
                          FontAwesome.list,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('RECEIPT',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                                fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 75,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.5),
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/image2.jpg',
                              ),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Explore | Men |Navy Blue',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          '1 piece',
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'Size : XL',
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 209, 215, 220),
                                border: Border.all(
                                  color: Colors.blue,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    2,
                                  ),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              ' x ₹799',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 60,
                          ),
                          child: Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Item Total',
                  ),
                  Text('₹799',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Delivery',
                  ),
                  Text(
                    'FREE',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Grand Total',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '₹799',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ordersTextHeadingStyle('CUSTOMER DETAILS'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Icon(
                          Icons.share_outlined,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ordersTextHeadingStyle('SHARE'),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        ordersTextTitleStyle('Deepa'),
                        SizedBox(
                          height: 5,
                        ),
                        ordersSubTextStyle('+91-7829000484'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        circularBorder(Icon(
                            Icons.call_rounded,
                            color: Colors.blue,
                            size: 20,
                          ),30),
                       
                        SizedBox(
                          width: 20,
                        ),
                      Icon(
                          FontAwesome.whatsapp,
                          color: Colors.green,
                          size: 35,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        ordersTextTitleStyle('Address'),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 220,
                          child: ordersSubTextStyle('D 1101 Chartered Beverly Hills ,Subramanyapuram P.O'),
                          
                        ),
                        
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          ordersTextTitleStyle('City'),
                          SizedBox(
                            height: 5,
                          ),
                          ordersSubTextStyle('Bangalore'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          ordersTextTitleStyle('Pincode'),
                          SizedBox(
                            height: 5,
                          ),
                          ordersSubTextStyle('560061'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        ordersTextTitleStyle('Payment'),
                        SizedBox(
                          height: 5,
                        ),
                        ordersSubTextStyle('Online'),
                      ],
                    ),
                    const Card(
                      
                     
                      color: Color.fromARGB(255, 222, 254, 222),
                      
                      child: SizedBox(
                        width:70,
                        height: 25,
                        child: Center(
                          child: Text(
                            'PAID',
                            style: TextStyle(
                              color:Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.w800
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        ordersTextHeadingStyle('ADDITIONAL INFORMATION')
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        ordersTextTitleStyle('State'),
                        SizedBox(
                          height: 5,
                        ),
                        ordersSubTextStyle('Karnataka')
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        ordersTextTitleStyle('Email'),
                        SizedBox(
                          height: 5,
                        ),
                        ordersSubTextStyle('greaniceaqua@gmail.com'),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 900,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextButton(
                    onPressed: (() {}),
                    child: ordersTextHeadingStyle('Share reciept'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:uidesign/classes/orderdetails.dart';
import 'package:uidesign/widgets/customwidgets.dart';
import 'package:uidesign/widgets/payments_topwidget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List imageList = [
      'assets/images/image1.jpg',
      'assets/images/image2.jpg',
      'assets/images/image3.jpg',
      'assets/images/image5.jpg',
      'assets/images/image6.jpg',
      'assets/images/image4.jpg'
    ];

    List<OrderClass> orderList = [
      OrderClass(
          price: 799,
          status: 'Successful',
          ),
      OrderClass(
          price: 394.4,
          status: 'Successful',
          ),
      OrderClass(
        price: 686.42,
        status: 'Successful',
      ),
      OrderClass(
        price: 1123.5,
        status: 'Successful',
      ),
      OrderClass(
        price: 1722.75,
        status: 'Successful',
      ),
      OrderClass(
        price: 884.17,
        status: 'Successful',
      ),
      OrderClass(
        price: 599.25,
        status: 'Successful',
      ),
      OrderClass(
          price: 394.4,
          status: 'Successful',
          ),
      OrderClass(
        price: 686.42,
        status: 'Successful',
      ),
      OrderClass(
        price: 1123.5,
        status: 'Successful',
      ),
      OrderClass(
        price: 1722.75,
        status: 'Successful',
      ),
      OrderClass(
        price: 884.17,
        status: 'Successful',
      ),
      OrderClass(
        price: 599.25,
        status: 'Successful',
      ),
      OrderClass(
          price: 394.4,
          status: 'Successful',
          ),
      OrderClass(
        price: 686.42,
        status: 'Successful',
      ),
      OrderClass(
        price: 1123.5,
        status: 'Successful',
      ),
      OrderClass(
        price: 1722.75,
        status: 'Successful',
      ),
      OrderClass(
        price: 884.17,
        status: 'Successful',
      ),
      OrderClass(
        price: 599.25,
        status: 'Successful',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Payments')),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              //padding: EdgeInsets.all(20.0),
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //transaction part
                topWidget(),
          
                const Divider(),
          
                //payment overview section
                actionRowColList(
                  
                    const Text('Payments Overview',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                    const Text('Life Time',style: TextStyle(color: Colors.grey,fontSize: 15)),
                    const Icon(Icons.keyboard_arrow_down,color: Colors.grey,)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height:90,
                      width:170,
                      child:cardWidget(
                        const Text(
                          'AMOUNT ON HOLD',
                          style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          '\u{20B9}0',
                          style: TextStyle(color: Colors.white,fontSize: 22,fontWeight:FontWeight.w500),
                        ),
                        Colors.orange)),
                    SizedBox(
                        height:90,
                      width:170,
                      child:cardWidget(
                        const Text(
                          'AMOUNT RECIEVED',
                          style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          '\u{20B9}13,332',
                          style: TextStyle(color: Colors.white,fontSize: 22,fontWeight:FontWeight.w500),
                        ),
                        Colors.green),)
                  ],
                ),
          
                //transaction section

                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    SizedBox(height: 10,),
                    const Text('Transactions',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left:8.0,right: 4),
                        child: ChoiceChip(
                          label: Text('On Hold'),
                          selected: false,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left:4.0,right: 4),
                        child: ChoiceChip(
                          label: Text('Payouts(15)',),
                          labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,),
                          selected: true,
                          selectedColor: Colors.blue,
                          
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left:4.0,right: 8),
                        child:
                            ChoiceChip(label: Text('Refunds'), selected: false),
                      ),
                    ],
                  ),
                ),
              ]),
                
          
                //listitems
          
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: ((context, index) {
                          return Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            listWidget(
                              leadingIcon: Image(image:AssetImage(imageList[index%6]),width: 50,height: 50,),
                              titleWidget:
                                  Text('Order #${orderList[index].orderID}',style: TextStyle(fontWeight: FontWeight.w600),),
                              subtitleWidget: Text('${orderList[index].date}'),
                              trailingIcon: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
  
                                  Text('\u{20B9}${orderList[index].price}',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                                  Wrap(

                                    crossAxisAlignment: WrapCrossAlignment.center,
                  
                                    children: [Icon(Icons.circle,color: Colors.green,size: 12,),Text('  ${orderList[index].status}',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),)],)
                                ],
                              )),
                              Text('\u{20B9}${orderList[index].price} deposited to ${orderList[index].userID}',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),)
                          ],);
                        }),
                        separatorBuilder: (context, index) {
                          return Divider();
                        },
                        itemCount: orderList.length),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

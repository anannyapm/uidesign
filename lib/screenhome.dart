import 'package:flutter/material.dart';
import 'package:uidesign/additionalinfo.dart';
import 'package:uidesign/managestore.dart';
import 'package:uidesign/orderpage.dart';
import 'package:uidesign/payments.dart';
import 'package:uidesign/premiumpage.dart';
import 'package:uidesign/widgets/customwidgets.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              
              children: [
                  InkWell(
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const AdditionalInfoScreen()));},
            child: listWidget(
                titleWidget: const Text('Screen One - Additional Information'),
                trailingIcon:const Icon(Icons.keyboard_arrow_right)),
                  ),
          
                  InkWell(
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const ManageStore()));},
            child: listWidget(
                
                titleWidget: const Text('Screen two - Manage Store'),
                trailingIcon:const Icon(Icons.keyboard_arrow_right)),
                  ),
          
                  InkWell(
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const PaymentScreen()));},
            child: listWidget(
                
                titleWidget: const Text('Screen three - Payments'),
                trailingIcon:const Icon(Icons.keyboard_arrow_right)),
                  ),


                  InkWell(
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const DukaanPremium()));},
            child: listWidget(
                
                titleWidget: const Text('Screen four - Premium'),
                trailingIcon:const Icon(Icons.keyboard_arrow_right)),
                  ),

                  InkWell(
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const ScreenOrder()));},
            child: listWidget(
                
                titleWidget: const Text('Screen five - Order Details'),
                trailingIcon:const Icon(Icons.keyboard_arrow_right)),
                  ),
                ]),
          )),
    );
  }
}

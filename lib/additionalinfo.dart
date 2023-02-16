import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:uidesign/widgets/customwidgets.dart';

class AdditionalInfoScreen extends StatefulWidget {
  const AdditionalInfoScreen({super.key});

  @override
  State<AdditionalInfoScreen> createState() => _AdditionalInfoScreenState();
}

class _AdditionalInfoScreenState extends State<AdditionalInfoScreen> {
  bool whatsAppVal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Additional Information'),
        
      ),
      body: SafeArea(
          child: Column(children: [
        Expanded(
          child: ListView(
            children: [
              listWidget(leadingIcon:const Icon(Icons.share), titleWidget: const Text('Share Dukaan App'),
                  trailingIcon:const Icon(Icons.keyboard_arrow_right)),
              listWidget(leadingIcon:const Icon(FontAwesome.language), titleWidget:const Text('Change Language'),
                  trailingIcon:const Icon(Icons.keyboard_arrow_right)),
              listWidget(
                  leadingIcon:const Icon(FontAwesome.whatsapp),
                  titleWidget: const Text('Whatsapp Chat Support'),
                  trailingIcon:Switch(
                    splashRadius: 50.0,
                    value: whatsAppVal,
                    onChanged: (value) => setState(() {
                      whatsAppVal = !whatsAppVal;

                      //print('clicked $whatsAppVal');
                    }),
                    //activeTrackColor: Colors.lightGreenAccent,
                    //activeColor: Colors.green,
                  )),
              listWidget(
                leadingIcon:const Icon(FontAwesome.lock),
                titleWidget:const Text( 'Privacy Policy'),
              ),
              listWidget(
                leadingIcon:const Icon(Icons.star_border),
                titleWidget: const Text('Rate Us'),
              ),
              listWidget(
                leadingIcon:const Icon(Icons.logout),
                titleWidget: const Text('Sign Out'),
              ),
            ],
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: const [
                  Text(
                    'Version',
                    style: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.grey),
                  ),
                  Text('2.4.2', style: TextStyle(color: Colors.grey)),
                ],
              ),
            )),
      ])),
    );
  }
}

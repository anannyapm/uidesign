import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DukaanPremium extends StatefulWidget {
  const DukaanPremium({super.key});

  @override
  State<DukaanPremium> createState() => _DukaanPremiumState();
}

class _DukaanPremiumState extends State<DukaanPremium> {
  static String videoID = 'jLLNd8AlHeU';

  // YouTube Video Full URL : https://www.youtube.com/watch?v=dFKhWe2bBkM&feature=emb_title&ab_channel=BBKiVines
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: videoID,
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_outlined)),
        title: const Text('Dukaan Premium'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity, height: 230,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      color: Colors.blue,
                      width: double.infinity,
                      height: 120,
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(color: Colors.grey),
                      ),
                      height: 200,
                      width: 350,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 25, right: 25, top: 22),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: Icon(
                                    Icons.shopping_bag,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text(
                                      'dukaan',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'premium',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                const Text('®'),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Get Dukaan Premium for just ₹4,999/year',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'All the advance features of scaling your business',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // height: ,
            ),
            const ListTile(
              title: Text(
                'Features',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.language,
                    color: Colors.blue,
                  ),
                ),
              ),
              title: Text('Custom domain name'),
              subtitle: Text(
                'Get your own custom domain and build your brand on the internet',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.verified_outlined,
                    color: Colors.blue,
                  ),
                ),
              ),
              title: Text('Verified seller badge'),
              subtitle: Text(
                'Get green verified badge under your store name and build trust',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.laptop_chromebook_rounded,
                    color: Colors.blue,
                  ),
                ),
              ),
              title: Text('Dukaan for PC'),
              subtitle: Text(
                'Access all the exclusive premium features on Dukaan for PC',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.headset_mic_outlined,
                    color: Colors.blue,
                  ),
                ),
              ),
              title: Text(
                'Priority support',
              ),
              subtitle: Text(
                'Get your questions resolved with our priority customer support',
              ),
            ),
            const Divider(
              thickness: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 15,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What is dukaan premium',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    // style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: YoutubePlayer(
                      progressColors: ProgressBarColors(
                        playedColor: Colors.red,
                        handleColor: Colors.red,
                      ),

                      controller: _controller,
                      liveUIColor: Colors.red,

                      //showVideoProgressIndicator: true,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 4,
            ),
            const ListTile(
              title: Text(
                'Frequently asked questions',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    const BoxDecoration(border: Border(bottom: BorderSide())),
                child: ExpansionTile(
                  title: const Text(
                    'What types of businesses can use Dukaan Premium?',
                  ),
                  children: [
                    Container(
                      // color: Colors.black12,
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      child: const Text(
                        "Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you ",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(),
                  ),
                ),
                child: ExpansionTile(
                  title: const Text(
                    'What is your refund policy?',
                  ),
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      child: const Text(
                        "Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you ",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(),
                  ),
                ),
                child: ExpansionTile(
                  title: const Text(
                    'Will there be an automatic charge after the paid trial?',
                  ),
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      child: const Text(
                        "Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you ",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(),
                  ),
                ),
                child: ExpansionTile(
                  title: const Text(
                    'What payment methods do you offer?',
                  ),
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      child: const Text(
                        "Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you ",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(),
                  ),
                ),
                child: ExpansionTile(
                  title: const Text(
                    'What happens when my free trial ends?',
                  ),
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      child: const Text(
                        "Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you ",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    const BoxDecoration(border: Border(bottom: BorderSide())),
                child: ExpansionTile(
                  title: const Text(
                    'What are the terms for the custom domain?',
                  ),
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      child: const Text(
                        "Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you ",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 4,
              height: 30,
            ),
            const ListTile(
              title: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Need help? Get in touch',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 175,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xB39E9E9E)),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.chat_bubble_outline),
                        Text('Live Chat'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 175,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xB39E9E9E),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.call_outlined),
                        Text('Phone Call'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 4,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      width: 180,
                      child: TextButton(
                        onPressed: (() {}),
                        child: const Text(
                          'Select Domain',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          color: Colors.blue,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: TextButton(
                        onPressed: (() {}),
                        child: const Text(
                          'Get Premium',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

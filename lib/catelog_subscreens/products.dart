import 'package:flutter/material.dart';
import 'package:uidesign/classes/productclass.dart';
import 'package:uidesign/widgets/customwidgets.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<ProductClass> prodList = [
    ProductClass(
        prodName: 'Couch Potato | Women...',
        prodPrice: '₹799',
        imagePath: 'assets/images/image1.jpg'),
    ProductClass(
        prodName: 'Couch Potato | Men | Bl..',
        prodPrice: '₹799',
        imagePath: 'assets/images/image2.jpg'),
    ProductClass(
        prodName: 'Mug| Explore',
        prodPrice: '₹399',
        imagePath: 'assets/images/image8.jpg'),
    ProductClass(
        prodName: 'Combo Blahst 1 | Pack ...',
        prodPrice: '₹699',
        imagePath: 'assets/images/image9.jpg'),
    ProductClass(
        prodName: 'Mug | Orchard',
        prodPrice: '₹449',
        imagePath: 'assets/images/image5.jpg'),
    ProductClass(
        prodName: 'Combo Blahst 2 | Expla',
        prodPrice: '₹599',
        imagePath: 'assets/images/image6.jpg'),
    ProductClass(
        prodName: 'I See Combo Pack',
        prodPrice: '₹1299',
        imagePath: 'assets/images/image7.jpg'),
    ProductClass(
        prodName: 'Kids Combo Blahst',
        prodPrice: '₹1,199',
        imagePath: 'assets/images/image8.jpg'),
  ];
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                ProductClass item = prodList[index];
              return productListWidget(item.imagePath, item.prodName, item.prodPrice); 
              },
              itemCount: prodList.length,
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  const Catagories({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: SafeArea(
          child: Center(
            child: Text(
              'Product Catagories',
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/catelog_subscreens/products.dart';

import 'catelog_subscreens/category.dart';



class CataloguePage extends StatelessWidget {
  const CataloguePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: (() {}),
              icon: const Icon(
                Icons.search,
              ),
            )
          ],
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Catalogue',
          ),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Products',
            ),
            Tab(
              text: 'Catagories',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            ProductScreen(),
            Catagories(),
          ],
        ),
      ),
    );
  }
}
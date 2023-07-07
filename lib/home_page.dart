import 'package:flutter/material.dart';
import 'package:zeptocode/search_field.dart';

import 'banners.dart';
import 'best_selling.dart';
import 'constants.dart';
import 'exclusive_offers.dart';
import 'gridcolumn.dart';
import 'grids.dart';
import 'groceries.dart';
import 'meats.dart';
import 'mq.dart';
import 'offer_post.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    MQuery().init(context);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('ZEPTO', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.wallet), color: Colors.white),
            IconButton(onPressed: () {}, icon: Icon(Icons.search), color: Colors.white),
            IconButton(onPressed: () {}, icon: Icon(Icons.person), color: Colors.white)
          ]),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              OfferPost(),
              SizedBox(height: 10),
              SearchField(),
              SizedBox(height: 10),
              Banners(),
              SizedBox(height: 10,),
              _buildSectiontitle('Explore By Categories', () {}),
              Grids(),
              GridColumn(),
              SizedBox(height: 10,),
              _buildSectiontitle('Exclusive Offers', () {}),
              ExclusiveOffers(),
              SizedBox(height: 10),
              _buildSectiontitle('Best Sellings', () {}),
              BestSellings(),
              SizedBox(height: 10),
              _buildSectiontitle('Groceries', () {}),
              Groceries(),
              SizedBox(height: 10),
              _buildSectiontitle('Meats', () {}),
              Meats(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectiontitle(String title, [onTap]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: kTitleStyle.copyWith(fontSize: 18),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'See all>',
              style: TextStyle(color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }

}

import 'package:ecommerce/page/cart.page.dart';
import 'package:ecommerce/page/home.page.dart';
import 'package:ecommerce/page/login.page.dart';
import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          HomePage(),
          CartPage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(1, 2.0),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
        ),
        child: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.shopping_cart),
            ),
            Tab(
              icon: Icon(Icons.perm_identity),
            )
          ],
          labelColor: Colors.green,
          unselectedLabelColor: Colors.black38,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5),
          indicatorColor: Colors.green,
        ),
      ),
    );
  }
}

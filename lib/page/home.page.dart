import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0XFFF5F5F5),
          width: double.infinity,
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 60,
              ),
              search(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: categoryList(),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Selling',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('See all'),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                child: productList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    padding: EdgeInsets.only(left: 20),
    height: 60,
    child: Row(
      children: [
        Icon(Icons.search),
        Container(
          width: 300,
          padding: EdgeInsets.only(left: 10, bottom: 10),
          child: TextFormField(
            autofocus: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Search',
              labelStyle: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    ),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.1),
      borderRadius: BorderRadius.circular(118),
    ),
  );
}

Widget categoryList() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
      ],
    ),
  );
}

Widget categoryItem() {
  return Container(
    width: 70,
    height: 70,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(1, 1),
          blurRadius: 5,
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.circular(64),
    ),
    child: Image.asset('assets/Icon_Devices.png'),
  );
}

Widget productList() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        productItem(),
        productItem(),
        productItem(),
        productItem(),
        productItem(),
        productItem(),
      ],
    ),
  );
}

Widget productItem() {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    width: 170,
    color: Colors.black12,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/product-1.png',
          width: 170,
          height: 170,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          child: Text(
            'Titulo do Produto',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Marca do Produto',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '\$200',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0XFF00C569),
          ),
        ),
      ],
    ),
  );
}

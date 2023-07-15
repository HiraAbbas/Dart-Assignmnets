import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class HomePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Ecommerce App'),
),
body: SingleChildScrollView(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
SizedBox(height: 10),
Container(
height: 200,
child: ListView.builder(
scrollDirection: Axis.horizontal,
itemCount: banners.length,
itemBuilder: (BuildContext context, int index) {
return Container(
margin: EdgeInsets.all(8),
width: 300,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
image: DecorationImage(
image: AssetImage(banners[index]),
fit: BoxFit.cover,
),
),
);
},
),
),
SizedBox(height: 20),
Padding(
padding: EdgeInsets.symmetric(horizontal: 16),
child: Text(
'Categories',
style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
),
),
SizedBox(height: 10),
Container(
height: 100,
child: FirebaseAnimatedList(
query: FirebaseDatabase.instance.ref('categories'),
itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
return Container(
margin: EdgeInsets.symmetric(horizontal: 8),
child: Chip(
label: Text(snapshot.value),
backgroundColor: Colors.blue,
labelStyle: TextStyle(color: Colors.white),
),
);
},
),
),
SizedBox(height: 20),
Padding(
padding: EdgeInsets.symmetric(horizontal: 16),
child: Text(
'Featured Products',
style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
),
),
SizedBox(height: 10),
GridView.builder(
shrinkWrap: true,
physics: NeverScrollableScrollPhysics(),
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2,
childAspectRatio: 0.75,
),
itemCount: products.length,
itemBuilder: (BuildContext context, int index) {
return Container(
margin: EdgeInsets.all(8),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Expanded(
child: Container(
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
image: DecorationImage(
image: AssetImage('assets/product_image.png'),
fit: BoxFit.cover,
),
),
),
),
SizedBox(height: 5),
Text(
products[index],
style: TextStyle(fontWeight: FontWeight.bold),
),
SizedBox(height: 2),
Text('Price: $20'),
],
),
);
},
),
],
),
),
);
}
}
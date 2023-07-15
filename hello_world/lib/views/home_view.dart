import 'package:flutter/material.dart';

import 'package:hello_world/custom_widgets/textfield.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 600,
        height: 500,
        color: Colors.blueGrey,
        child:SingleChildScrollView(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const[
            
           customTextfield(),
           

            SizedBox(
              height: 20,
            ),
             //customContainers(),
              //customContainers(),
               //customContainers(),
          ],
        ),
      ),
      ),
    );


        
      
    
  }
}
//text editing controll
//textediting controller 
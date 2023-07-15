import 'package:flutter/material.dart';

import 'home.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Screen"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
              child: const Text('Home screen'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement<void, void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const HomeScreen(),
                ),
              );
            },
            child: const Text('back'),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
      drawer: Drawer(
        //backgroundColor: Colors.brown,
        child: ListView(
          padding: EdgeInsets.zero,
          
          children: [
            
            const UserAccountsDrawerHeader(
           //   decoration: ,
               currentAccountPicture: CircleAvatar( 
             
              backgroundImage: NetworkImage("https://1fid.com/wp-content/uploads/2022/06/cool-profile-picture-2-1024x1024.jpg"),
            ),
        
              accountName: Text("Hira"),
              accountEmail: Text("hira@gmail.com"),
            ),
            
      TextButton(
          
            onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              
            },
            child:const Text("Go To HomeScreen"),
          ),
        
            TextButton(
          
            onPressed:(){
              
              
            },
            child:const Text("Hello i am textButton!"),
          ),
         
          ],
          

        ),
      ),
    );
  }
}

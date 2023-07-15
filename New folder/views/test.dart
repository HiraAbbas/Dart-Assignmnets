import 'package:flutter/material.dart';

DefaultTabController appBarWidget() {
  return DefaultTabController(
    length: 4,
    child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.camera_alt_rounded),
              onPressed: () {
                // Add your camera code here
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Add your search code here
              },
            ),
            PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              itemBuilder: (context) {
                return [
                  // In this case, we need 5 popupmenuItems one for each option.
                  const PopupMenuItem(child: Text('New Group')),
                  const PopupMenuItem(child: Text('New Broadcast')),
                  const PopupMenuItem(child: Text('Linked Devices')),
                  const PopupMenuItem(child: Text('Starred Messages')),
                  const PopupMenuItem(child: Text('Settings')),
                ];
              },
            ),
          ],
          backgroundColor: const Color(0xff128C7E),
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Color(0xff128C7E),
            tabs: [
              Tab(
                icon: Padding(
                  padding: EdgeInsets.only(right: 600),
                  child: Icon(Icons.groups_rounded, size: 25.0),
                ),
              ),
              Tab(
                child: Text('Chats',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text('Status',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text('Calls',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
            ],
            labelColor: Colors.white,
          ),
        ),
        body: const Center(child: Text('Hello World'))),
  );
}

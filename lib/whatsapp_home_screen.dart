import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/screens/Updates.dart';
import 'package:whatsapp/screens/calls.dart';
import 'package:whatsapp/screens/chats.dart';
import 'package:whatsapp/screens/communities.dart';

class WhatsappHomeScreen extends StatefulWidget {
  const WhatsappHomeScreen({super.key});

  @override
  State<WhatsappHomeScreen> createState() => _WhatsappHomeScreenState();
}

class _WhatsappHomeScreenState extends State<WhatsappHomeScreen> {
  int _selectedIndex = 0;

  final screens = [
    const Chats(),
    const Updates(),
    const Communities(),
    const Calls(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "WhatsApp",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        tooltip: "New chat",
        onPressed: () {},
        child: const Icon(
          Icons.add_comment_rounded,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.message_rounded,
              color: Colors.green,
            ),
            label: "Chats",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.manage_history,
              color: Colors.green,
            ),
            label: "Updates",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.people_alt_outlined,
              color: Colors.green,
            ),
            label: "Communities",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.call_outlined,
              color: Colors.green,
            ),
            label: "Calls",
          ),
        ],
      ),
    );
  }
}

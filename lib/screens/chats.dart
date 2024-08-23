import 'package:flutter/material.dart';
import 'package:whatsapp/components/badge.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // badges
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              FilterBadge(text: "All"),
              SizedBox(width: 5),
              FilterBadge(text: "Unread"),
              SizedBox(width: 5),
              FilterBadge(text: "Favorites"),
              SizedBox(width: 5),
              FilterBadge(text: "Groups"),
            ],
          ),
        ),

        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset("images/gaby.jpg"),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "4:30 PM",
                      style: TextStyle(color: Colors.green),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          color: Colors.green,
                          height: 20,
                          width: 20,
                          child: const Center(
                              child: Text(
                            "5",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
                title: const Text(
                  "Gabriel",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("hi, how are doing dear,"),
              );
            },
          ),
        ),
      ],
    );
  }
}

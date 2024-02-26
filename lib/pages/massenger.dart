import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Massenger extends StatefulWidget {
  const Massenger({Key? key});

  @override
  State<Massenger> createState() => _MassengerState();
}

class _MassengerState extends State<Massenger> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String? messageText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF18C0C1),

        title: Text(
          "Let's Collaborate",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          )
        ],
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: _firestore.collection("messages").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(child: Text('No messages available'));
                  }
                  return ListView(
                    children: snapshot.data!.docs.map((document) {
                      final messageText = document.get("text") as String;
                      print(messageText);
                      final currentUserMessage = true; 
                      return ListTile(
                        title: Align(
                          alignment: currentUserMessage ? Alignment.centerRight : Alignment.centerLeft,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: currentUserMessage ? Colors.blue : Colors.grey[300],
                            ),
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                            child: Text(
                              messageText,
                              style: TextStyle(color: currentUserMessage ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: InputDecoration.collapsed(
                        hintText: 'Send a message',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      if (messageText != null && messageText!.isNotEmpty) {
                        _firestore.collection("messages").add({
                          "text": messageText!,
                        });
                        setState(() {
                          messageText = null;
                        });
                      }
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.keyboard_voice),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

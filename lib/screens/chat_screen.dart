import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat_starting_project/servises/auth_servise.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat_starting_project/constants.dart';

class ChatScreen extends StatefulWidget {
  static const String id = 'chat_screen';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _fireStore = FirebaseFirestore.instance;
  TextEditingController _messageTextController = TextEditingController();

  void messageStream(){
    _fireStore.collection('messages').snapshots().listen((event){
      for(var message in event.docs){
        print(message.data());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
               Navigator.pop(context);
               AuthService().signOut();
              }),
        ],
        title: const Text('⚡ ️Chat'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            StreamBuilder<QuerySnapshot>(
                stream: _fireStore.collection('messages').snapshots(),
                builder: (context, snapshot){
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return const Expanded(child: Center(child: Expanded(child: CircularProgressIndicator(backgroundColor: Colors.lightBlue,),),));
                  }
                  if(snapshot.hasData){
                    var messages = snapshot.data!.docs;
                    List<Text> messageWidgets = [];
                    for(var message in messages){
                      var messageText = message.get('text');
                      var sender = message.get('sender');
                      Text messageWidget = Text('$messageText from $sender');
                      messageWidgets.add(messageWidget);
                    }
                    return Column(
                      children: messageWidgets
                    );
                  } else{
                    return const Center(child: Text('snapshot has no data'),
                    );
                  }

                }
            ),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _messageTextController,
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _fireStore.collection('messages').add({
                        'date': DateTime.now().millisecondsSinceEpoch,
                        'text': _messageTextController.text,
                        'sender': AuthService().getCurrentUser!.email
                      });
                      //Implement send functionality
                    },
                    child: const Icon(Icons.send,
                        size: 30, color: kSendButtonColor),
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

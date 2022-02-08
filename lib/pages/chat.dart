import 'package:flutter/material.dart';
import 'package:whatappcloning/models/chatmodel.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey,
                foregroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage(dummyData[index].imageUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dummyData[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dummyData[index].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  dummyData[index].message,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

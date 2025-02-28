import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat_model.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatsData.length,
      itemBuilder:
          (context, index) => Column(
            children: <Widget>[
              Divider(height: 0.1),
              InkWell(
                onTap: () {
                  print('tapped on ${chatsData[index].name}');
                },

                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,

                    backgroundImage: NetworkImage(
                      chatsData[index].profileUrl,
                      scale: 1.0,
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        chatsData[index].name,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        chatsData[index].time,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    chatsData[index].message,
                    style: TextStyle(fontSize: 11.0, color: Colors.grey[600]),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}

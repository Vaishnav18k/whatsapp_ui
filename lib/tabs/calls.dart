import 'package:flutter/material.dart';
import 'package:whatsapp/model/call_model.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CallData.length,
      itemBuilder:
          (Context, i) => Column(
            children: <Widget>[
              Divider(height: 0.1),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(CallData[i].profileUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      CallData[i].name,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Icon(
                      i % 1 == 0 ? Icons.videocam : Icons.videocam,

                      color: Colors.green[800],
                    ),
                  ],
                ),
                subtitle: Row(
                  children: <Widget>[
                    Text(
                      CallData[i].time,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/model/status_model.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: SizedBox(
                  width: 50.0,
                  child: Stack(
                    children: <Widget>[
                      ClipOval(
                        child: Image.network(
                          'data:image/jpeg;base64,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',
                          width: 50.0,
                        ),
                      ),
                      //Container down
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 20.0,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                title: Text(
                  'My Status',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Tap to add status update'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            width: double.infinity,
            color: Colors.grey[300],
            child: Text('Recent updates'),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: statusData.length,
            itemBuilder:
                (context, i) => Column(
                  children: <Widget>[
                    Divider(height: 0.1),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: CachedNetworkImageProvider(
                          statusData[i].profileUrl,
                        ),
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(
                            statusData[i].name,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            statusData[i].time,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
          ),
        ),
      ],
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChatData {
  final String username;
  final String message;

  ChatData({required this.username, required this.message});

  factory ChatData.fromJson(Map<String, dynamic> json) {
    return ChatData(
      username: json['username'],
      message: json['message'],
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late Future<List<ChatData>> chatData;

  @override
  void initState() {
    super.initState();
    chatData = fetchChatData();
  }

  Future<List<ChatData>> fetchChatData() async {
    final response = await http.get(Uri.parse('YOUR_PHP_SERVER_URL'));

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => ChatData.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load chat data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Data'),
      ),
      body: FutureBuilder<List<ChatData>>(
        future: chatData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ChatData>? data = snapshot.data;

            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index].username),
                  subtitle: Text(data[index].message),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

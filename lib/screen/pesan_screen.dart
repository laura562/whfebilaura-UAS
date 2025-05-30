import 'package:flutter/material.dart';
import 'package:whazlansaja/data_saya.dart';

class PesanScreen extends StatefulWidget {
  final Map<String, dynamic> dosenData;

  const PesanScreen({super.key, required this.dosenData});

  @override
  State<PesanScreen> createState() => _PesanScreenState();
}

class _PesanScreenState extends State<PesanScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<Map<String, dynamic>> _messages = [];

  @override
  void initState() {
    super.initState();
    _messages
        .addAll(List<Map<String, dynamic>>.from(widget.dosenData['messages']));
  }

  void _sendMessage(String text) {
    if (text.isNotEmpty) {
      final newMessage = {"from": 0, "message": text};
      setState(() {
        _messages.add(newMessage);
        _messageController.clear();
      });

      // Kembalikan pesan baru ke BerandaScreen
      Navigator.pop(context, newMessage);
    }
  }

  Widget _buildChatBubble(BuildContext context, Map<String, dynamic> message) {
    final bool isMe = message['from'] == 0;

    return Align(
      alignment: isMe ? Alignment.topRight : Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue.shade100 : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          message['message'],
          style: TextStyle(
            color: isMe ? Colors.blue.shade800 : Colors.black87,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.dosenData['avatar']),
              radius: 20,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.dosenData['full_name'],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Online',
                    style: TextStyle(fontSize: 12, color: Colors.green),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: const Icon(Icons.call), onPressed: () {}),
          PopupMenuButton<String>(
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem<String>(
                      value: 'view_contact', child: Text('Lihat Kontak')),
                  const PopupMenuItem<String>(
                      value: 'media', child: Text('Media, Tautan, Dokumen')),
                  const PopupMenuItem<String>(
                      value: 'search', child: Text('Cari')),
                  const PopupMenuItem<String>(
                      value: 'mute', child: Text('Bisukan Notifikasi')),
                  const PopupMenuItem<String>(
                      value: 'wallpaper', child: Text('Wallpaper')),
                  const PopupMenuItem<String>(
                      value: 'more', child: Text('Lainnya')),
                ];
              }),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildChatBubble(context, _messages[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: const InputDecoration(
                      hintText: 'Ketik pesan...',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: _sendMessage,
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    _sendMessage(_messageController.text);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MessageButton extends StatefulWidget {
  const MessageButton({Key? key}) : super(key: key);

  @override
  State<MessageButton> createState() => _MessageButtonState();
}

class _MessageButtonState extends State<MessageButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _showMessage,
      child: const Text('Show me'),
    );
  }

  _showMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('I am role based'),
      ),
    );
  }
}
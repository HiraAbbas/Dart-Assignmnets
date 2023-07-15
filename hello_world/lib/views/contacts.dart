import 'package:flutter/material.dart';
import 'package:hello_world/utils/contactConstant.dart';

class contactss extends StatefulWidget {
  const contactss({super.key});

  @override
  State<contactss> createState() => _contactssState();
}

class _contactssState extends State<contactss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONTACT APP"),
      ),
      body: ListView.builder(
        itemCount: Contact.contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${Contact.contacts[index]['name']}'),
            subtitle: Text('${Contact.contacts[index]['name']}'),
            // trailing:
          );
        },
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('contacts'),
          content: const Text('contacts detail'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'save'),
              child: const Text('save'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}

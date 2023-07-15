import 'package:flutter/material.dart';
import 'package:hello_world/utils/contactConstant.dart';


class ContactApp extends StatefulWidget {
  @override
  _ContactAppState createState() => _ContactAppState();
}

class _ContactAppState extends State<ContactApp> {
  final List<Contact> _contacts = [];

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  void _addContact() {
    final name = _nameController.text;
    final phoneNumber = _phoneNumberController.text;

    if (name.isNotEmpty && phoneNumber.isNotEmpty) {
      setState(() {
        _contacts.add(Contact(name: name, phoneNumber: phoneNumber));
      });

      _nameController.clear();
      _phoneNumberController.clear();
    }
  }

  void _deleteContact(int index) {
    setState(() {
      _contacts.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(hintText: 'Name'),
                ),
                TextField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(hintText: 'Phone number'),
                  
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _addContact,
                  child: Text('Add contact'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _contacts.length,
              itemBuilder: (BuildContext context, int index) {
                final contact = _contacts[index];

                return ListTile(
                  title: Text(contact.name),
                  subtitle: Text(contact.phoneNumber),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => _deleteContact(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Contact {
  final String name;
  final String phoneNumber;

  Contact({required this.name, required this.phoneNumber});
}

class ContactListPage extends StatefulWidget {
  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final List<Contact> _contacts = [
    Contact(name: 'John Doe', phoneNumber: '555-1234'),
    Contact(name: 'Jane Smith', phoneNumber: '555-5678'),
  ];

  showContactDialog({Contact? contact}) async {
    var nameController = TextEditingController(text: contact?.name ?? '');
    var phoneController = TextEditingController(text: contact?.phoneNumber ?? '');

    final result = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(contact == null ? 'Add Contact' : 'Edit Contact'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'Phone Number'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final name = nameController.text;
              final phone = phoneController.text;
              final newContact = Contact(name: name, phoneNumber: phone);

              if (contact == null) {
                // Add new contact
                setState(() {
                  _contacts.add(newContact);
                });
              } else {
                // Edit existing contact
                setState(() {
                  final index = _contacts.indexOf(contact);
                  _contacts[index] = newContact;
                });
              }

              Navigator.of(context).pop(true);
            },
            child: Text('Save'),
          ),
        ],
      ),
    );

    if (result == true) {
      // Saved contact, update UI
      setState(() {});
    }
  }

  void _deleteContact(Contact contact) {
    setState(() {
      _contacts.remove(contact);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, index) {
          final contact = _contacts[index];
          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.phoneNumber),
            trailing: IconButton(
              icon: Icon(Icons.edit),
              onPressed: () => _showContactDialog(contact: contact),
            ),
            onLongPress: () => _deleteContact(contact),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showContactDialog(),
        child: Icon(Icons.add),
      ),
    );
  }
}


  
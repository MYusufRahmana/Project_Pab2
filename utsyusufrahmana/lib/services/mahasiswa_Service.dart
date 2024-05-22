import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class MahasiswaService {
  final DatabaseReference _database =
      FirebaseDatabase.instance.ref().child('student_list');

  Stream<Map<String, Map<String, String>>> getNameList() {
    return _database.onValue.map((event) {
      final Map<String, Map<String, String>> items = {};
      DataSnapshot snapshot = event.snapshot;

      if (snapshot.value != null) {
        Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
        values.forEach((key, value) {
          items[key] = {
            'name': value['name'] as String,
            'npm': value['npm'] as String,
          };
        });
      }
      return items;
    });
  }

  void addShoppingItem(String itemName, String itemNpm, BuildContext context) {
    if (itemName.isEmpty || itemNpm.isEmpty) {
      const warning = SnackBar(content: Text('Nama barang atau tipe barang tidak boleh kosong!'));
      ScaffoldMessenger.of(context).showSnackBar(warning);
    } else {
      _database.push().set({'name': itemName, 'npm': itemNpm});
    }
  }
}

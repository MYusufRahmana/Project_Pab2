import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ShoppingService {
  final DatabaseReference _database =
      FirebaseDatabase.instance.ref().child('shopping_list');

  // Method untuk mendapatkan daftar belanja
  Stream<Map<String, Map<String, String>>> getShoppingList() {
    return _database.onValue.map((event) {
      final Map<String, Map<String, String>> items = {};
      DataSnapshot snapshot = event.snapshot;

      if (snapshot.value != null) {
        Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
        values.forEach((key, value) {
          items[key] = {
            'name': value['name'] as String,
            'type': value['type'] as String,
          };
        });
      }
      return items;
    });
  }

  // Method untuk menambahkan barang ke dalam daftar belanja
  void addShoppingItem(String itemName, String itemType, BuildContext context) {
    if (itemName.isEmpty || itemType.isEmpty) {
      const warning = SnackBar(content: Text('Nama barang atau tipe barang tidak boleh kosong!'));
      ScaffoldMessenger.of(context).showSnackBar(warning);
    } else {
      _database.push().set({'name': itemName, 'type': itemType});
    }
  }
}

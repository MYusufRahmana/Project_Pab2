import 'package:flutter/material.dart';
import 'package:latihanuts2/services/cashier_service.dart'; // Impor layanan ShoppingService

class ShoppingInputScreen extends StatefulWidget {
  const ShoppingInputScreen({Key? key}) : super(key: key);

  @override
  _ShoppingInputScreenState createState() => _ShoppingInputScreenState();
}

class _ShoppingInputScreenState extends State {
  final TextEditingController _itemNameController =
      TextEditingController(); // Controller untuk nama barang
  final TextEditingController _itemTypeController =
      TextEditingController(); // Controller untuk tipe barang
  final ShoppingService _shoppingService =
      ShoppingService(); // Layanan ShoppingService

// Method untuk menampilkan snackbar
  void _showSuccessMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Berhasil menambahkan barang!'),
        duration: const Duration(seconds: 2), // Durasi snackbar ditampilkan
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Barang Belanja'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _itemNameController,
              decoration: const InputDecoration(
                labelText: 'Nama Barang',
                hintText: 'Masukkan nama barang',
              ),
            ),
            TextField(
              controller: _itemTypeController,
              decoration: const InputDecoration(
                labelText: 'Tipe Barang',
                hintText: 'Masukkan tipe barang',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final String itemName = _itemNameController.text;
                final String itemType = _itemTypeController.text;
                _shoppingService.addShoppingItem(itemName, itemType,
                    context); // Panggil method addShoppingItem dari ShoppingService
                _itemNameController.clear();
                _itemTypeController.clear();
                _showSuccessMessage(
                    context); // Panggil method untuk menampilkan pesan berhasil
              },
              child: const Text('Tambahkan Barang'),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: StreamBuilder<Map<String, Map<String, String>>>(
                stream: _shoppingService.getShoppingList(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    Map<String, Map<String, String>> items = snapshot.data!;
                    return ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final key = items.keys.elementAt(index);
                        final item = items[key];
                        return ListTile(
                          title: Text(item!['name']!),
                          subtitle: Text(item['type']!));
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

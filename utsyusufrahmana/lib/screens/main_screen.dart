import 'package:flutter/material.dart';
import 'package:utsyusufrahmana/services/mahasiswa_Service.dart';

class StudentInputScreen extends StatefulWidget {
  const StudentInputScreen({Key? key}) : super(key: key);

  @override
  _StudentInputScreenState createState() => _StudentInputScreenState();
}

class _StudentInputScreenState extends State
 {
  final TextEditingController _itemNameController =
      TextEditingController();
  final TextEditingController _itemNpmController =
      TextEditingController(); 
  final MahasiswaService _MahasiswaService =
     MahasiswaService(); 


  void _showSuccessMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Berhasil menambahkan barang!'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data Mahasiswa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: _itemNameController,
                decoration: const InputDecoration(
                  labelText: 'Nama Mahasiswa',
                  hintText: 'Masukkan nama Mahasiswa',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), 
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: _itemNpmController,
                decoration: const InputDecoration(
                  labelText: 'NPM',
                  hintText: 'Masukkan NPM',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16), // Padding teks dalam kotak input
                  border: InputBorder.none, // Hilangkan garis tepi input
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                final String itemName = _itemNameController.text;
                final String itemType = _itemNpmController.text;
                _MahasiswaService.addShoppingItem(itemName, itemType, context);
                _itemNameController.clear();
                _itemNpmController.clear();
                _showSuccessMessage(context);
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: StreamBuilder<Map<String, Map<String, String>>>(
                stream: _MahasiswaService.getNameList(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    Map<String, Map<String, String>> items = snapshot.data!;
                    return ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final key = items.keys.elementAt(index);
                        final item = items[key];
                        return ListTile(
                          title: Text(
                            '${index + 1}. ${item!['name']!}',
                            style: TextStyle(
                              color: Colors.primaries[index % Colors.primaries.length], // Warna berubah berdasarkan indeks
                            ),
                          ),
                          subtitle: Text(item['npm']!),
                        );
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

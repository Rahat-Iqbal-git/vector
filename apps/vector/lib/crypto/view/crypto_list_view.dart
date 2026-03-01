import 'package:flutter/material.dart';

class CryptoListView extends StatelessWidget {
  const CryptoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto List'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('Get Data'),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.monetization_on),
                title: Text('Crypto Item ${index + 1}'),
                subtitle: const Text('Details about the crypto item'),
              );
            },
          ),
        ],
      ),
    );
  }
}

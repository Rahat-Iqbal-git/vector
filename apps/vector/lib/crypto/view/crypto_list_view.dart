import 'dart:developer';

import 'package:dio/dio.dart';
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
            onPressed: getGlobalData,
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

  Future<void> getGlobalData() async {
    final Dio _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.coingecko.com/api/v3',
        headers: {
          'x-cg-demo-api-key': 'CG-uGEzPEEYpUWU5gz4STYYwDP4',
        },
      ),
    );
    try {
      final response = await _dio.get('/global');

      if (response.statusCode == 200) {
        // return response.data;
        log(response.data.toString());
      } else {
        throw Exception('Failed to fetch data');
      }
    } on DioException catch (e) {
      throw Exception('Dio error: ${e.message}');
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vector/crypto/cubit/crypto_data_cubit.dart';
import 'package:vector/di/injection.dart';

class GlobalCryptoDataPage extends StatelessWidget {
  const GlobalCryptoDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return getIt<CryptoDataCubit>();
      },
      child: const GlobalCryptoDataView(),
    );
  }
}

class GlobalCryptoDataView extends StatelessWidget {
  const GlobalCryptoDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Crypto Data'),
      ),
      body: Column(
        children: [
          Text(
            '''Global Crypto Data: '''
            '''${context.watch<CryptoDataCubit>().state.total_market_cap?['btc']}''',
            style: const TextStyle(fontSize: 18),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                await context.read<CryptoDataCubit>().fetchGlobalCryptoData();
              },
              child: const Text('Fetch Global Crypto Data'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:core/vector_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vector/core/app_theme/extensions/app_text_extension.dart';
import 'package:vector/crypto/cubit/crypto_data_cubit.dart';
import 'package:vector/di/injection.dart';
import 'package:vector_domain/vector_domain.dart';

class GlobalCryptoDataPage extends StatelessWidget {
  const GlobalCryptoDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return getIt<CryptoDataCubit>()..fetchGlobalCryptoData();
      },
      child: const GlobalCryptoDataView(),
    );
  }
}

class GlobalCryptoDataView extends StatelessWidget {
  const GlobalCryptoDataView({super.key});

  List<String> get _showCoins => const [
    'btc',
    'eth',
    'bnb',
    'xrp',
    'sol',
    'dot',
  ];

  @override
  Widget build(BuildContext context) {
    final appText = Theme.of(context).extension<AppTextExtension>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vector'),
      ),
      body: BlocBuilder<CryptoDataCubit, AsyncState<GlobalCryptoDataEntity>>(
        builder: (context, state) {
          switch (state) {
            case AsyncInitial() || AsyncLoading():
              return const Center(child: CircularProgressIndicator());
            case AsyncFailure(:final failure):
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(failure.message),
                    const SizedBox(height: 14),
                    ElevatedButton(
                      onPressed: () {
                        context.read<CryptoDataCubit>().fetchGlobalCryptoData();
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            case AsyncSuccess(:final data):
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: DashboardCard(
                          value: data.ongoingIcos,
                          subtitle: 'Ongoing',
                          icon: Icons.trending_up,
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: DashboardCard(
                          value: data.endedIcos,
                          subtitle: 'Ended',
                          icon: Icons.check_circle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Expanded(
                        child: DashboardCard(
                          value: data.markets,
                          subtitle: 'Markets',
                          icon: Icons.currency_bitcoin,
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: DashboardCard(
                          value: data.upcomingIcos,
                          subtitle: 'Upcoming',
                          icon: Icons.light,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text('Market Caps', style: appText?.title),
                  const SizedBox(height: 14),
                  ListView.separated(
                    itemBuilder: (context, index) {
                      final coin = _showCoins[index];
                      final marketCap = data.totalMarketCap?[coin];
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          title: Text(
                            coin.toUpperCase(),
                            style: appText?.title,
                          ),
                          subtitle: Text(
                            marketCap != null ? '\$$marketCap' : 'N/A',
                          ),
                          leading: const Icon(Icons.currency_bitcoin),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 8),
                    itemCount: _showCoins.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                  const SizedBox(height: 50),
                ],
              );
          }
        },
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    required this.value,
    required this.subtitle,
    required this.icon,

    super.key,
  });
  final int value;
  final String subtitle;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final appText = Theme.of(context).extension<AppTextExtension>();

    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            value.toString(),
            style: appText?.heading1.copyWith(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(icon, color: Colors.white),
              const SizedBox(width: 5),
              Text(
                subtitle,
                style: appText?.body.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

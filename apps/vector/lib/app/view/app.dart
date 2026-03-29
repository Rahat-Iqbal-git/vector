import 'package:flutter/material.dart';
// import 'package:vector/crypto/view/crypto_list_view.dart';
import 'package:vector/crypto/view/global_crypto_data.dart';
import 'package:vector/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const GlobalCryptoDataPage(),
    );
  }
}

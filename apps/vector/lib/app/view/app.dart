import 'package:flutter/material.dart';
import 'package:vector/core/app_theme/theme/app_theme.dart';
import 'package:vector/crypto/view/global_crypto_data_page.dart';
import 'package:vector/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   ),
      //   useMaterial3: true,
      // ),
      theme: AppTheme.dark, // dark theme by default
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const GlobalCryptoDataPage(),
    );
  }
}

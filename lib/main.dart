import 'package:flutter/material.dart';

import 'core/routes/app_router.dart';
import 'core/utils/styles.dart';

void main() async {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Top Albums',
      debugShowCheckedModeBanner: false,
      theme: teyaMusicTheme(),
      routerConfig: _appRouter.config(),
    );
  }
}

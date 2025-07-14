import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '/features/album/presentation/widget/home_widget.dart';

@RoutePage()
class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: HomePageWidget());
  }
}

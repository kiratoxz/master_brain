import 'package:master_brain/router/app_router.dart';
import 'package:master_brain/utils/game_constants.dart';
import 'package:flutter/material.dart';
import 'package:master_brain/utils/game_assets.dart';

final AppRouter appRouter = AppRouter();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GameAssets.preloadAssets();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildAppRouter(context);
  }

  Widget _buildAppRouter(BuildContext context) {
    return MaterialApp.router(
      title: 'Master Brain',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
      theme: ThemeData(
        primaryColor: GameColors.green,
      ),
    );
  }
}

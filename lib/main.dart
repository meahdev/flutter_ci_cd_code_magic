import 'package:flutter/material.dart';
import 'package:flutter_ci_cd_codemagic/repository/posts/posts_repository.dart';
import 'package:flutter_ci_cd_codemagic/screens/posts/posts_screen.dart';

import 'core/connectivity.dart';
import 'network/api_client.dart';


void main() async {
  ///ensures that the Flutter framework's bindings are properly initialized before proceeding with the rest of your application code.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (_) => PostsScreen(
              repository: PostsRepository(ApiClient()),
              connectivityService: ConnectivityService(),
            ),
      },
    );
  }
}

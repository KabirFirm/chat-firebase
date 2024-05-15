

import 'package:go_router/go_router.dart';

import '../pages/chat_page.dart';
import '../pages/full_photo_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/settings_page.dart';
import '../pages/splash_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/splash",
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: "/settings",
      builder: (context, state) => const SettingsPage(),
    ),
    GoRoute(
      path: '/chat',
      builder: (context, state) {
        ChatPageArguments argument = state.extra as ChatPageArguments;
        return ChatPage(arguments: argument);
      },
    ),
    GoRoute(
      path: '/fullPhoto',
      builder: (context, state) {
        String url = state.extra as String;
        return FullPhotoPage(url: url);
      },
    )
  ],
);
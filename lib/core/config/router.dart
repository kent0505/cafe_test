import 'package:go_router/go_router.dart';

import '../../features/home/pages/home_page.dart';
import '../../features/inventory/pages/inventory_add_page.dart';
import '../../features/inventory/pages/inventory_page.dart';
import '../../features/settings/pages/privacy_page.dart';
import '../../features/settings/pages/settings_page.dart';
import '../../features/settings/pages/support_page.dart';
import '../../features/settings/pages/terms_page.dart';
import '../../features/splash/onboard_page.dart';
import '../../features/splash/splash_page.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/onboard',
      builder: (context, state) => const OnboardPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/inventory',
      builder: (context, state) => const InventoryPage(),
      routes: [
        GoRoute(
          path: 'add',
          builder: (context, state) => const InventoryAddPage(),
        ),
      ],
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsPage(),
      routes: [
        GoRoute(
          path: 'support',
          builder: (context, state) => const SupportPage(),
        ),
        GoRoute(
          path: 'terms',
          builder: (context, state) => const TermsPage(),
        ),
        GoRoute(
          path: 'privacy',
          builder: (context, state) => const PrivacyPage(),
        ),
      ],
    ),
  ],
);

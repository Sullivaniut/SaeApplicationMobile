import 'package:go_router/go_router.dart';
import 'package:saeapplicationmobile/ui/login.dart';
import 'package:saeapplicationmobile/ui/register.dart';
import 'package:saeapplicationmobile/ui/home.dart';

final router = GoRouter(
    initialLocation: "/",
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: 'login',
        builder: (context, state) => const LoginUI(),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (context, state) => const RegisterUI(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => HomeUI(),
      )
    ]
);
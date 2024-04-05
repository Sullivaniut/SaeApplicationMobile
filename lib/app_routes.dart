import 'package:go_router/go_router.dart';
import 'package:saeapplicationmobile/ui/login.dart';
import 'package:saeapplicationmobile/ui/register.dart';
import 'package:saeapplicationmobile/ui/home.dart';
import 'package:saeapplicationmobile/ui/reservation.dart';
import 'package:saeapplicationmobile/ui/annonce.dart';
import 'package:saeapplicationmobile/ui/pret.dart';
import 'package:saeapplicationmobile/ui/compte.dart';


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
      ),
      GoRoute(
        path: '/createannonce',
        name: 'createannonce',
        builder: (context, state) => const AnnonceUI(),
      ),
      GoRoute(
        path: '/mesprets',
        name: 'mesprets',
        builder: (context, state) => const PretsUI(),
      ),
      GoRoute(
        path: '/mesreservations',
        name: 'mesreservations',
        builder: (context, state) => const MesReservationsUI(),
      ),
      GoRoute(
        path: '/compte',
        name: 'compte',
        builder: (context, state) => const CompteUI(),
      ),
    ]
);
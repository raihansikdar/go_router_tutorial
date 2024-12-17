import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/home_screen.dart';
import 'package:go_router_tutorial/product_screen.dart';

class AppRouting{
  static final GoRouter router = GoRouter(
    initialLocation: "/",
    debugLogDiagnostics: true,
      routes: [
        GoRoute(
            path: "/",
            builder: (context,state) => const HomeScreen(),
        ),
        GoRoute(
            path: "/product",
            builder: (context,state)=> const ProductScreen()
        )
      ],
  );
}
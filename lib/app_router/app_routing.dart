import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/details_screen.dart';
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
            path: "/product/:productName",
            builder: (context,state)=> ProductScreen(productName: state.pathParameters['productName'] ?? '',)
        ),
        GoRoute(
            path: "/details/:productId/:productName/:price",
            builder: (context,state){
              String productId = state.pathParameters['productId'] ?? '';
              String productName = state.pathParameters['productName'] ?? '';
              String price = state.pathParameters['price'] ?? '';
              return DetailsScreen(
                productId: int.parse(productId),
                productName: productName,
                price: double.parse(price),
              );
            }
        )
      ],
  );
}
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/cart_screen.dart';
import 'package:go_router_tutorial/details_screen.dart';
import 'package:go_router_tutorial/error_screen.dart';
import 'package:go_router_tutorial/home_screen.dart';
import 'package:go_router_tutorial/product_screen.dart';
import 'package:go_router_tutorial/profile_screen.dart';

class AppRouting{
  static final GoRouter router = GoRouter(
   initialLocation: "/",
    debugLogDiagnostics: true,
      routes: [

        GoRoute(
          name: 'home',
            path: "/",
            builder: (context,state) => const HomeScreen(),
          routes: [
            GoRoute(
                name: 'profile',
                path: "/profile/:userId/:userName",
                builder: (context,state) => ProfileScreen(
                  userId: int.parse(state.pathParameters['userId'] ?? ''),
                  userName: state.pathParameters['userName'] ?? '',
                )
            ),
          ]
        ),


        GoRoute(
            path: "/product/:productName",
            builder: (context,state)=> ProductScreen(productName: state.pathParameters['productName'] ?? '',),
          routes: [
            GoRoute(
                path: "cart",
               builder: (context,state)=>CartScreen(productName: state.pathParameters['productName'] ?? '',)
            )
          ]
        ),

        // GoRoute(
        //     path: "/details/:productId/:productName/:price",
        //     builder: (context,state){
        //       String productId = state.pathParameters['productId'] ?? '';
        //       String productName = state.pathParameters['productName'] ?? '';
        //       String price = state.pathParameters['price'] ?? '';
        //       return DetailsScreen(
        //         productId: int.parse(productId),
        //         productName: productName,
        //         price: double.parse(price),
        //       );
        //     }
        // ),

        GoRoute(
          path: "/details/:productId/:productName/:price",
          pageBuilder: (context,state){
            String productId = state.pathParameters['productId'] ?? '';
            String productName = state.pathParameters['productName'] ?? '';
            String price = state.pathParameters['price'] ?? '';
            return CustomTransitionPage(
              key: state.pageKey,
                child: DetailsScreen(
                  productId: int.parse(productId),
                  productName: productName,
                  price: double.parse(price),
                ),
                transitionsBuilder: (context,animation,secondaryAnimation,child){
                return FadeTransition(opacity: animation,child: child,);
                },
              transitionDuration: Duration(seconds:0)
            );

          }
        )

      ],
    errorBuilder: (context,state){
      return ErrorScreen(error: state.error);
    },
    // errorPageBuilder: (context, state) {
    //   return MaterialPage(
    //     key: state.pageKey,
    //     child: ErrorScreen(
    //       error: state.error,
    //     ),
    //   );
    // },
  );
}
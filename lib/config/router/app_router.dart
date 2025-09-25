import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market_place_v1/features/auth/auth.dart';
import 'package:market_place_v1/features/product/product.dart';
// Configuración de rutas con GoRouter
final  appRouter  = GoRouter(
  initialLocation: '/', // Pantalla inicial
  routes: [
      GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const ProductsListScreen(),
    ),
    /*GoRoute( Ejemplo envio parametros
      path: '/product/:id', // /product/new
      builder: (context, state) => ProductScreen(
        productId: state.params['id'] ?? 'no-id',
      ),
    ),*/
    
  ],
);


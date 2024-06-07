import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../src.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: GalleryRoute.page, initial: true),
    AutoRoute(page: ImageDetailRoute.page),
  ];
}

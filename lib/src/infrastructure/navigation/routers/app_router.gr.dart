// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    GalleryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GalleryPage(),
      );
    },
    ImageDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ImageDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ImageDetailPage(
          key: args.key,
          entry: args.entry,
        ),
      );
    },
  };
}

/// generated route for
/// [GalleryPage]
class GalleryRoute extends PageRouteInfo<void> {
  const GalleryRoute({List<PageRouteInfo>? children})
      : super(
          GalleryRoute.name,
          initialChildren: children,
        );

  static const String name = 'GalleryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ImageDetailPage]
class ImageDetailRoute extends PageRouteInfo<ImageDetailRouteArgs> {
  ImageDetailRoute({
    Key? key,
    required APODEntry entry,
    List<PageRouteInfo>? children,
  }) : super(
          ImageDetailRoute.name,
          args: ImageDetailRouteArgs(
            key: key,
            entry: entry,
          ),
          initialChildren: children,
        );

  static const String name = 'ImageDetailRoute';

  static const PageInfo<ImageDetailRouteArgs> page =
      PageInfo<ImageDetailRouteArgs>(name);
}

class ImageDetailRouteArgs {
  const ImageDetailRouteArgs({
    this.key,
    required this.entry,
  });

  final Key? key;

  final APODEntry entry;

  @override
  String toString() {
    return 'ImageDetailRouteArgs{key: $key, entry: $entry}';
  }
}

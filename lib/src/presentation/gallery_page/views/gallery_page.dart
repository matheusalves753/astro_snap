import 'package:astro_snap/locator.dart';
import 'package:astro_snap/src/presentation/gallery_page/gallery_page_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../infrastructure/navigation/navigation.dart';
import '../../../infrastructure/utils/utils.dart';
import '../gallery_page_view_model.dart';

@RoutePage()
class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final _viewModel = locator<GalleryPageViewModel>();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _viewModel.loadData();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    await _viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AstroSnap'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.all(Dimension.xs),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search by title or date',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
              onChanged: (query) {
                _viewModel.search(query);
              },
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<GalleryPageViewModel, GalleryPageState>(
            bloc: _viewModel,
            builder: (context, state) {
              if (state is GalleryPageLoadingState) {
                return const CircularProgressIndicator();
              } else if (state is GalleryPageDataState) {
                return RefreshIndicator(
                  onRefresh: _onRefresh,
                  child: Column(
                    children: [
                      FutureBuilder(
                        future: ConnectivityUtils.hasConnectivity(),
                        builder: (context, hasConnectivity) =>
                            hasConnectivity.data ?? false
                                ? const SizedBox.shrink()
                                : const SizedBox(
                                    height: Dimension.md,
                                    child: Text(
                                      'No internet connection. Showing cached data.',
                                    ),
                                  ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: state.entries.length,
                          itemBuilder: (context, index) {
                            final entry = state.entries[index];
                            final formattedDate = DateFormat.yMMMMd(
                              Localizations.localeOf(context).toString(),
                            ).format(entry.date);
                            return ListTile(
                              onTap: () => context.router.push(
                                ImageDetailRoute(entry: entry),
                              ),
                              title: Text(entry.title),
                              subtitle: Text(formattedDate),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              } else if (state is GalleryPageErrorState) {
                return const Text('ERROR');
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}

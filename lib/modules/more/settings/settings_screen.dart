import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mangayomi/modules/more/widgets/list_tile_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTileWidget(
                title: 'General',
                subtitle: 'App language',
                icon: Icons.tune_rounded,
                onTap: () => context.push('/general')),
            ListTileWidget(
                title: 'Appearance',
                subtitle: 'Theme',
                icon: Icons.color_lens_rounded,
                onTap: () => context.push('/appearance')),
            // ListTileWidget(
            //     title: 'Library',
            //     subtitle: 'Categories',
            //     icon: Icons.collections_bookmark_rounded,
            //     onTap: () {}),
            ListTileWidget(
                title: 'Reader',
                subtitle: 'Reading mode, display, navigation',
                icon: Icons.chrome_reader_mode_rounded,
                onTap: () => context.push('/readerMode')),
            ListTileWidget(
                title: 'Browse',
                subtitle: 'Sources, global search',
                icon: Icons.explore_rounded,
                onTap: () => context.push('/browseS')),
            ListTileWidget(
              onTap: () {
                context.push('/about');
              },
              icon: Icons.info_outline,
              title: 'About',
            ),
          ],
        ),
      ),
    );
  }
}
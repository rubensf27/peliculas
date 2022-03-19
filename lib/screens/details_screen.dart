import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:peliculas/themes/app_theme.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomSliverAppBar(),
        ],
      ),
    );
  }
}

class _CustomSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      pinned: true,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          child: const Text(
            'Detalles',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        centerTitle: true,
        background: const FadeInImage(
          placeholder: AssetImage(
            'assets/loading.gif',
          ),
          image: NetworkImage(
            'https://via.placeholder.com/500x300',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';

import 'image_preview.dart';
import 'menu.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key key}) : super(key: key);

  BuildContext get context => null;

  //* BUILD METHOD FOR CUSTOMSCROLLVIEW WITH SLIVERS (SLIVERGRID)

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadImagePaths(context),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<String>> imagePathsSnapshot,
      ) {
        if (imagePathsSnapshot.connectionState == ConnectionState.done &&
            imagePathsSnapshot.hasData) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(10),
                sliver: _buildContent(imagePathsSnapshot.data),
              ),
            ],
          );
        }

        return Center(child: CircularProgressIndicator());
      },
    );
  }

  //* SLIVERGRID

  SliverGrid _buildContent(List<String> imagePaths) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return _buildImageWidget(context, imagePaths[index]);
        },
        childCount: imagePaths.length,
      ),
    );
  }

  Future<List<String>> _loadImagePaths(BuildContext context) async {
    final String manifestContentJson =
        await DefaultAssetBundle.of(context).loadString('AssetManifest.json');

    final Map<String, dynamic> manifestMap = json.decode(manifestContentJson);

    return manifestMap.keys
        .where((String key) => key.contains('assets/images/'))
        .toList();
  }

  Widget _buildImageWidget(BuildContext context, String imagePath) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => ImagePreview(path: imagePath)));
      }, // Handle your callback
      child: Container(
        child: ClipRRect(
          //  borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

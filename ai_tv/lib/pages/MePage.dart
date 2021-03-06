
import 'package:ai_tv/bean/HomPageBean.dart';
import 'package:ai_tv/persistence/DatabaseClient.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MePageState();
  }

}

class MePageState extends State<MePage> {
  List<HomeListEntity> entityList = new List();
  @override
  void initState() {
    super.initState();
    print('initState');
    initEntityList();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('MePage build()');
    return Container(
      child: new ListView(
        children: entityList.map((entity) {
          return new ListTile(
            title: Text(entity.title),
            subtitle: Text(entity.zhuti),
            leading: Image(image: CachedNetworkImageProvider("${entity.img}")),
          );

        }).toList(),
      ),
    );
  }

  void initEntityList() async {
    DatabaseClient db = new DatabaseClient();
    await db.create();
    entityList = await db.fetchAllFavorites();
    print('has favorite ${entityList?.length}');
    setState(() {
    });
  }
}
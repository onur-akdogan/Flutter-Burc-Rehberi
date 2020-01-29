import 'package:flutter/material.dart';

import 'Burc_Liste.dart';
import 'models/burc.dart';

class BurcDetay extends StatelessWidget {
  int gelenIndex;
  Burc secilenBurc;
  BurcDetay(this.gelenIndex);

  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.tumBurclar[gelenIndex];

    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            primary: true,
            //backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/" + secilenBurc.burcBuyukResim,
                  fit: BoxFit.cover),
              centerTitle: true,
              title: Text(secilenBurc.burcAdi + " Burcu ve Özellikleri"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(9),
              padding: EdgeInsets.all(9),
              /* decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.all(Radius.circular(33))
              ), */
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcDetayi,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

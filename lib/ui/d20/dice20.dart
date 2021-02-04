import 'package:admob_flutter/admob_flutter.dart';
import 'package:dados/stores/dice20.store.dart';
import 'package:dados/ui/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Dice20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Dice20Store controller = Dice20Store();
    AdmobBannerSize bannerSize = AdmobBannerSize.LARGE_BANNER;

    return Scaffold(
        backgroundColor: Colors.amber[700],
        appBar: AppBar(
          backgroundColor: Colors.amber[900],
          centerTitle: true,
          title: Text(
            'D20',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.amber,
            child: ListView(
              children: [
                Card(
                  child: ListTile(
                    title: Text(
                      '2 Dados',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => DiceView()),
                          (route) => false);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Toque no dado para rolar!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 25,
            ),
            Stack(alignment: Alignment.center, children: [
              FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Image.asset('assets/20-lados.png'),
                onPressed: () {
                  print('press d20');
                  controller.roll();
                },
              ),
              Observer(
                builder: (_) => Text(
                  "${controller.total}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
            SizedBox(
              height: 25,
            ),
            AdmobBanner(
              adUnitId: 'ca-app-pub-9969531245603854/4500118642',
              adSize: bannerSize,
              listener: (AdmobAdEvent event, Map<String, dynamic> args) {
                //handleEvent(event, args, 'Banner');
              },
              onBannerCreated: (AdmobBannerController controller) {
                print('created');
              },
            )
          ],
        )));
  }
}

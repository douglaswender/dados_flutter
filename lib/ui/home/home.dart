import 'package:dados/stores/dice.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:admob_flutter/admob_flutter.dart';

class DiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final diceCounter = DiceCounter();
    AdmobBannerSize bannerSize = AdmobBannerSize.BANNER;
    return Scaffold(
      backgroundColor: Colors.amber[700],
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        centerTitle: true,
        title: Text(
          "Toque em um dos dados!!!".toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    child: Observer(
                      builder: (_) =>
                          Image.asset('assets/dice${diceCounter.left}.png'),
                    ),
                    onPressed: diceCounter.roll,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Observer(
                      builder: (_) =>
                          Image.asset('assets/dice${diceCounter.right}.png'),
                    ),
                    onPressed: diceCounter.roll,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Observer(
                builder: (_) => Text(
                  "Total: ${diceCounter.total}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 18,
                      fontFamily: 'Montserrat'),
                ),
              ),
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
        ),
      ),
    );
  }
}

import 'package:chessai/model/app_model.dart';
import 'package:chessai/views/components/shared/rounded_button.dart';
import 'package:flutter/cupertino.dart';
// import 'package:url_launcher/url_launcher.dart';

import '../../chess_view.dart';
import '../../settings_view.dart';

class MainMenuButtons extends StatelessWidget {
  final AppModel appModel;

  MainMenuButtons(this.appModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          RoundedButton(
            'Start',
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    appModel.newGame(context, notify: false);
                    return ChessView(appModel);
                  },
                ),
              );
            },
          ),
          SizedBox(height: 10),
          Row(
            children: [
             
              SizedBox(width: 10),
              Expanded(
                child: RoundedButton(
                  'Settings',
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => SettingsView(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


}

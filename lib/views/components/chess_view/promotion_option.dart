import 'package:chessai/logic/chess_piece.dart';
import 'package:chessai/logic/shared_functions.dart';
import 'package:chessai/model/app_model.dart';
import 'package:chessai/views/components/main_menu_view/game_options/side_picker.dart';
import 'package:flutter/cupertino.dart';

class PromotionOption extends StatelessWidget {
  final AppModel appModel;
  final ChessPieceType promotionType;

  PromotionOption(this.appModel, this.promotionType);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Image(
        image: AssetImage(
          'assets/images/pieces/${formatPieceTheme(appModel.pieceTheme)}' +
              '/${pieceTypeToString(promotionType)}_${_playerColor()}.png',
        ),
      ),
      onPressed: () {
        appModel.game?.promote(promotionType);
        appModel.update();
        Navigator.pop(context);
      },
    );
  }

  String _playerColor() {
    return appModel.turn == Player.player1 ? 'white' : 'black';
  }
}

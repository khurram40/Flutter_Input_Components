import 'package:flutter/material.dart';

class PopUpMenuButton extends StatefulWidget {
  @override
  _PopUpMenuButtonState createState() => _PopUpMenuButtonState();
}

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
class _PopUpMenuButtonState extends State<PopUpMenuButton> {
  WhyFarther _selection;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton <WhyFarther>(
      onSelected: (WhyFarther result) {
        print(result);
        setState(() {
          _selection = result;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>> [
        const PopupMenuItem<WhyFarther>(
            value: WhyFarther.harder,
            child: Text('Working a lot harder')
        ),
        const PopupMenuItem<WhyFarther>(
            value: WhyFarther.smarter,
            child: Text('Being a lot smarter')
        ),
        const PopupMenuItem<WhyFarther>(
            value: WhyFarther.selfStarter,
            child: Text('Being a self-starter')
        ),
        const PopupMenuItem<WhyFarther>(
            value: WhyFarther.tradingCharter,
            child: Text('Placed in charge of the trading charter')
        ),
      ],
    );
  }
}

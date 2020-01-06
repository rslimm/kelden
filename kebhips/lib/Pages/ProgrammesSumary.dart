import 'package:flutter/material.dart';
import 'package:kebhips/Model/ProgrammesDetails.dart';

import 'DetailPage.dart';
import 'Separator.dart';
import 'TextStyle.dart';


class ProgrammesSumary extends StatefulWidget {
  final ProgrammesDetails programmesDetails;
  final bool horizontal;

  ProgrammesSumary(this.programmesDetails, {this.horizontal = true});

  ProgrammesSumary.vertical(this.programmesDetails): horizontal = false;

  @override
  _ProgrammesSumaryState createState() => _ProgrammesSumaryState();
}

class _ProgrammesSumaryState extends State<ProgrammesSumary> {
  @override
  Widget build(BuildContext context) {

    final programThumbnail = new Container(
      margin: new EdgeInsets.symmetric(
          vertical: 16.0
      ),
      alignment: widget.horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: new Hero(
        tag: "program-hero-${widget.programmesDetails.id}",
        child: new Image(
          image: new AssetImage(widget.programmesDetails.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );



    Widget _programValue({String value, String image}) {
      return new Container(
        child: new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Image.asset(image, height: 12.0),
              new Container(width: 8.0),
             // new Text(programmesDetails.gravity, style: Style.smallTextStyle),
            ]
        ),
      );
    }


    final programCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(widget.horizontal ? 76.0 : 16.0, widget.horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: widget.horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(widget.programmesDetails.name, style: Style.titleTextStyle),
          new Container(height: 10.0),
          new Text(widget.programmesDetails.time, style: Style.commonTextStyle),
          new Separator(),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(
                  flex: widget.horizontal ? 1 : 0,
                  child: _programValue(
                      //value: programmesDetails.distance,
                      image: 'assets/img/ic_distance.png')

              ),
              new Container(
                width: widget.horizontal ? 8.0 : 32.0,
              ),
              new Expanded(
                  flex: widget.horizontal ? 1 : 0,
                  child: _programValue(
                      //value: programmesDetails.gravity,
                      image: 'assets/img/ic_gravity.png')
              )
            ],
          ),
        ],
      ),
    );


    final programCard = new Container(
      child: programCardContent,
      height: widget.horizontal ? 124.0 : 154.0,
      margin: widget.horizontal
          ? new EdgeInsets.only(left: 46.0)
          : new EdgeInsets.only(top: 72.0),
      decoration: new BoxDecoration(
        color: new Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );


    return new GestureDetector(
        onTap: widget.horizontal
            ? () => Navigator.of(context).push(
          new PageRouteBuilder(
            pageBuilder: (_, __, ___) => new DetailPage(widget.programmesDetails),
            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            new FadeTransition(opacity: animation, child: child),
          ) ,
        )
            : null,
        child: new Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 24.0,
          ),
          child: new Stack(
            children: <Widget>[
              programCard,
              programThumbnail,
            ],
          ),
        )
    );
  }
}

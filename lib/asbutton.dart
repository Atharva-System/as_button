import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ASButton extends StatelessWidget {
  //ON PRESSED ACTION
  final Function onPressAction;

  //CORNER RADIUS OF BUTTON
  double cornerRadius;
  int borderWidth;

  //SET BUTTON TEXT
  String btnText;

  //COLORS
  Color btnColor;
  Color btnSplashColor;
  Color btnHighlightColor;
  Color txtColor;
  Color borderColor;

  //FONT FAMILY
  String txtFontFamily;
  FontWeight txtFontWeight;
  FontStyle txtFontStyle;
  double txtFontSize;

  //DEFAULT VALUES
  double defaultRadius = 0.0;
  final double defaultFontSize = 18;
  final FontStyle defaultFontStyle = FontStyle.normal;
  final FontWeight defaultFontWeight = FontWeight.normal;
  final String defaultFontFamily = 'Roboto';
  Color defaultTxtColor = Colors.black;

  ASButton(this.onPressAction, this.btnText,
      {this.btnColor,
      this.btnSplashColor,
      this.btnHighlightColor,
      this.cornerRadius, this.borderColor, this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: btnColor ?? Colors.transparent,
      splashColor: btnSplashColor ?? Colors.transparent,
      highlightColor: btnHighlightColor ?? Colors.transparent,
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: borderColor ?? Colors.transparent, width: borderWidth ?? 0, style: BorderStyle.solid),
          borderRadius:
              new BorderRadius.circular(cornerRadius ?? defaultRadius)),
      onPressed: onPressAction,
      child: Text(
        btnText,
        style: TextStyle(
            fontFamily: txtFontFamily ?? defaultFontFamily,
            fontWeight: txtFontWeight ?? defaultFontWeight,
            fontStyle: txtFontStyle ?? defaultFontStyle,
            fontSize: txtFontSize ?? defaultFontSize,
            color: txtColor ?? defaultTxtColor),
      ),
    );
  }
}

class ASButtonCustomIcon extends StatelessWidget {
  final Function onPressAction;

  String imagePath;

  //SHAPE
  ShapeBorder shapeBorder;

  //COLORS
  Color btnColor;
  Color btnSplashColor;
  Color btnHighlightColor;

  //DEFAULT VALUES
  final double defaultFontSize = 18;

  ASButtonCustomIcon(this.onPressAction, this.imagePath,
      {this.btnColor,
      this.btnSplashColor,
      this.btnHighlightColor,
      this.shapeBorder});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: btnColor ?? Colors.transparent,
      splashColor: btnSplashColor ?? Colors.transparent,
      highlightColor: btnHighlightColor ?? Colors.transparent,
      shape: shapeBorder ?? null,
      onPressed: onPressAction,
      child: Image.asset(
        imagePath,
      ),
    );
  }
}

class ASButtonWithSystemIcon extends StatelessWidget {
  final Function onPressAction;

  //MATERIAL ICON
  IconData materialIcon;
  Color materialIconColor;
  double materialIconSize;

  //SHAPE
  ShapeBorder shapeBorder;

  //COLORS
  Color btnColor;
  Color btnSplashColor;
  Color btnHighlightColor;

  //DEFAULT VALUES
  Color defaultMaterialIconColor = Colors.black;
  double defaultMaterialIconSize = 24;

  ASButtonWithSystemIcon(this.onPressAction, this.materialIcon,
      {this.defaultMaterialIconColor,
      this.defaultMaterialIconSize,
      this.btnColor,
      this.btnSplashColor,
      this.btnHighlightColor,
      this.shapeBorder});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: btnColor ?? Colors.transparent,
      splashColor: btnSplashColor ?? Colors.transparent,
      highlightColor: btnHighlightColor ?? Colors.transparent,
      shape: shapeBorder ?? null,
      onPressed: onPressAction,
      child: Icon(
        materialIcon,
        color: materialIconColor ?? defaultMaterialIconColor,
        size: materialIconSize ?? defaultMaterialIconSize,
      ),
    );
  }
}
import 'package:flutter/material.dart';

const Color _colorCustom = Color(0XFF493456);
const List<Color> _colorThemes=[
  _colorCustom,
  Colors.black,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.red,
  Colors.pink,
  Colors.green,



];

class ThemesCustoms{
  final int selectColor;

  ThemesCustoms({this.selectColor=0})
  :assert(selectColor>=0 && selectColor<=_colorThemes.length,'color no permitido' );
  ThemeData theme(){

    return ThemeData(
      colorSchemeSeed: _colorThemes[selectColor],
      brightness: Brightness.dark,
       

    
    );
  }

  


}


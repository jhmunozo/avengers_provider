import 'package:flutter/material.dart';

class AvengersInfo extends ChangeNotifier {
  int _n = -1;
  final List<String> _avengers = ['Hulk', 'IronMan', 'Captain America', 'Black Widow', 'Thor'];
  final List<String> _enemies = ['Abosorbing Man', 'The Mandarin', 'Red Skull', 'Red Guardian', 'Hela'];
  final List<String> _avengersPics = [
    'https://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Hulk-icon.png', 
    'https://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Iron-Man-icon.png', 
    'https://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Captain-America-icon.png', 
    'https://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Black-Widow-icon.png',
    'https://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Thor-icon.png'
    ];
  final List<String> _enemiesPics = [
    'https://terrigen-cdn-dev.marvel.com/content/prod/1x/absorbingman_head.jpg', 
    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/the-mandarin-marvel-1145478-1280x0-1561382697.jpg', 
    'https://avatarfiles.alphacoders.com/128/128249.jpg', 
    'https://sm.ign.com/ign_in/feature/b/black-wido/black-widows-red-guardian-explained-who-is-the-david-harbour_dhxr.jpg',
    'https://api.duniagames.co.id/api/content/upload/file/6725624441585208056.JPG'];
  String _avenger = 'Thor';
  String _enemy = 'Hela';
  String _avengerPic = 'https://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Thor-icon.png';
  String _enemyPic = 'https://api.duniagames.co.id/api/content/upload/file/6725624441585208056.JPG';

  String get avenger => _avenger;
  String get enemy => _enemy;
  String get avengerPic => _avengerPic;
  String get enemyPic => _enemyPic;

  void setAvenger () {
    _n < _avengers.length - 1 ? _n++ : _n=0;
    _avenger = _avengers[_n];
    _avengerPic = _avengersPics[_n];
    notifyListeners();
  }

  void setEnemy () {
    _enemy = _enemies[_n];
    _enemyPic = _enemiesPics[_n];
    notifyListeners();
  }


}

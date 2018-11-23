

class InfoManager
{
  static InfoManager _instance;
  static InfoManager get instance {
  if(_instance== null)
   {
     _instance = InfoManager();
     _instance.getHouseList();
   }
    return _instance;
  }




  List<VerderInfo> _verderInfos = List<VerderInfo>();
  List<HouseInfo> _houseInfos = List<HouseInfo>();
  List<VerderInfo> getVenderList()
  {
    if(_verderInfos.length <= 0)
    {
      for (var i = 0; i < 10; i++) {
        VerderInfo tempVender = VerderInfo(i, "Verder" + i.toString());
        _verderInfos.add(tempVender);
      }
    }
    return _verderInfos;
  }

  VerderInfo  _currentVerder;
  VerderInfo get currentVerder => _currentVerder;
  void setCurrentVerder(VerderInfo value)  => _currentVerder = value;

  List<HouseInfo> getHouseList()
  {
    if(_houseInfos.length <= 0)
    {
      List<VerderInfo> tempVenderInfo = getVenderList();
      for (var i = 0; i < tempVenderInfo.length; i++) {
       for (var j = 0; j < 3; j++) {
         HouseInfo houseInfo = HouseInfo(tempVenderInfo[i]._venderId, tempVenderInfo[i]._verderName + " House " + j.toString());
         _houseInfos.add(houseInfo);
       }
     }
    }
    return _houseInfos;
  }

  List<HouseInfo> getHouseInfoByVender(VerderInfo vender)
  {    
    List<HouseInfo> tempHouseInfo = List<HouseInfo>();
    for (var i = 0; i < _houseInfos.length; i++) {
      if(vender._venderId == _houseInfos[i]._venderId)
      {
        tempHouseInfo.add(_houseInfos[i]);
      }
    }
    return tempHouseInfo;
  }
}



class VerderInfo
{
  String _verderName = "VenderName";  
  int _venderId = 0;
  int get venderID => _venderId;
  String get venderName =>_verderName;

  VerderInfo(this._venderId, this._verderName);
}

class HouseInfo
{
  String _houseName = "houseName";
  int _venderId = 0;
  String get HouseName =>_houseName;
  int get VenderID =>_venderId;
  HouseInfo(this._venderId, this._houseName);
}
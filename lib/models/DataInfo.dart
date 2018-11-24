
abstract class DataGenerator
{
  Iterable<BaseInfo> generateData();
}

class BaseInfo
{
  String _infoName;
  int _infoID;
  BaseInfo(this._infoID,this._infoName);

  int get infoID =>_infoID;
  String get infoName =>_infoName;
  
  void setInfoID(int id){this._infoID = id;}
  void setInfoName(String name){this._infoName = name;}
}

class VerderInfo extends BaseInfo
{
   VerderInfo(int id,String name) : super(id, name);
}

class HouseInfo extends BaseInfo
{
  final int _verderID;
  int get verderID =>_verderID;
  HouseInfo(int id,String name,this._verderID):super(id,name);
}

class RoomLocateInfo extends BaseInfo
{
  final int _houseID;
  int get houseID =>_houseID;

  final String _url;
  String get url =>_url;
  RoomLocateInfo(int id,String name,this._url,this._houseID):super(id,name);
}

class RoomDetailInfo extends BaseInfo
{
  final int _roomLocationID;
  final String _url;
  final String _iconName;
  final String _title;
  final String _des;

  int get roomLocationID =>_roomLocationID;
  String get url =>_url;
  String get iconName =>_iconName;
  String get title =>_title;
  String get des =>_des;

  RoomDetailInfo(int id,String name,this._roomLocationID,this._url,this._iconName,this._title,this._des):super(id,name);
}


class CreateList<T>
{
  List<T> dataList = List<T>();  
  List<T> createList(int count){   
     for (var i = 0; i < count; i++) {
            T info = creator(i);
            dataList.add(info);      
          } 
     return dataList;
   }

   List<T> createListOnOther(int count,int otherCount){   
     for (var i = 0; i < count; i++) {
       for (var j = 0; j < otherCount; j++) {
          T info = creatorOther(i,j);
          dataList.add(info);  
       }                
      } 
     return dataList;
   }

  T creator(int index)
  {
    return null;
  }

  T creatorOther(int index,int otherCount)
  {
    return null;
  }
}


class VerderInfoList extends CreateList<VerderInfo>
{
  @override
  VerderInfo creator(int index) {
      return VerderInfo(index, "Verder" + index.toString());
    }
}


class HouseInfoList extends CreateList<HouseInfo>
{
  @override
  HouseInfo creatorOther(int index,int otherCount) {
      return HouseInfo(index, "House" + index.toString(),otherCount);
    }
}

class RoomLocateInfoList extends CreateList<RoomLocateInfo>
{
 @override
  RoomLocateInfo creatorOther(int index,int otherCount) {
      return RoomLocateInfo(index, "RoomLocate" + index.toString(),"url",otherCount);
    }
}

class RoomDetailInfoList extends CreateList<RoomDetailInfo>
{
 @override
  RoomDetailInfo creatorOther(int index,int otherCount) {
      return RoomDetailInfo(index, "RoomDetails" + index.toString(),otherCount,"url","iconName","title","des");
    }
}

class FilterList<T extends BaseInfo>
{
  Iterable<T> filterList(int id, List<T> dataList)
  { 
    List<T> tempData = List<T>();
    for (var i = 0; i < dataList.length; i++)
     {  
        T data = dataList[i];
        if(data.infoID == id)
        {
            tempData.add(data);
        }       
     }
     return tempData;
   }   
}





class InfoManager
{
  static InfoManager _instance;
  static InfoManager get instance {
  if(_instance== null)
   {
     _instance = InfoManager();
     _instance.createList();
   }
    return _instance;

  }

  VerderInfoList verderInfoList = VerderInfoList();
  HouseInfoList houseInfoList = HouseInfoList();
  RoomLocateInfoList roomLocateInfoList = RoomLocateInfoList();
  RoomDetailInfoList roomDetailInfoList = RoomDetailInfoList();


  void createList()
  {
    verderInfoList.createList(10);
    houseInfoList.createListOnOther(10, 3);
    roomLocateInfoList.createListOnOther(10, 3);
    roomDetailInfoList.createListOnOther(10, 3);
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
         HouseInfo houseInfo = HouseInfo(i, tempVenderInfo[i]._infoName + " House " + j.toString(),tempVenderInfo[i]._infoID,);
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
      if(vender._infoID == _houseInfos[i]._infoID)
      {
        tempHouseInfo.add(_houseInfos[i]);
      }
    }
    return tempHouseInfo;
  }
}
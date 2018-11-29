
import 'package:flutter_client_php_backend/futures/userInfo_futures.dart';
import 'package:flutter_client_php_backend/models/ProductHouse.dart';
import 'package:flutter_client_php_backend/models/ProductHouseList.dart';
import 'package:flutter_client_php_backend/models/RoomInfo.dart';
import 'package:flutter_client_php_backend/models/RoomInfoList.dart';
import 'package:flutter_client_php_backend/models/RoomLocate.dart';
import 'package:flutter_client_php_backend/models/RoomLocateList.dart';
import 'package:flutter_client_php_backend/models/Vendor.dart';
import 'package:flutter_client_php_backend/models/VendorList.dart';

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

  int _currentIndex = 0;
  int get currentIndex =>_currentIndex;
  T getCurrentItem()
   {
     return dataList[_currentIndex];
   }

  void setCurrentIndex(int index)
  {
    if(index >= 0 && index < dataList.length)
    {
      _currentIndex = index;
    }
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
    String numberStr = (index + otherCount + 1).toString();
    return HouseInfo(index, "House" + numberStr,otherCount);
    }
}

class RoomLocateInfoList extends CreateList<RoomLocateInfo>
{
 @override
  RoomLocateInfo creatorOther(int index,int otherCount) {
        String numberStr = (index + otherCount + 1).toString();

      return RoomLocateInfo(index, "RoomLocate" + numberStr,"url",otherCount);
    }
}

class RoomDetailInfoList extends CreateList<RoomDetailInfo>
{
 @override
  RoomDetailInfo creatorOther(int index,int otherCount) {
    String numberStr = (index + otherCount + 1).toString();
      return RoomDetailInfo(index, "RoomDetails" + numberStr,otherCount,"url","iconName","Details " + numberStr + MockConstData.title,MockConstData.des);
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

typedef SelectTabIndex = void Function(int index);

class MockConstData
{
 static const  String title = "The yellow and black striped banner";
 static const String des = '''When the contents of a Column exceed the amount of space available, the Column overflows, and the contents are clipped. In debug mode, a yellow and black striped bar is rendered at the overflowing edge to indicate the problem, and a message is printed below the Column saying how much overflow was detected.
  The usual solution is to use a ListView rather than a Column, to enable the contents to scroll when vertical space is limited.''';
}

class InfoManager
{
  static InfoManager _instance;
  static InfoManager get instance {
  if(_instance== null)
   {
     _instance = InfoManager();
     _instance.requestData();
     //_instance.createList();
   }
    return _instance;
  }

///////////////////////////////////////////////////////////////////

  Function onDataReady;

  List<Vendor> _vendorList = List<Vendor>();
  ProductHouseList _houseList = ProductHouseList();
  RoomLocateList _roomLocateList = RoomLocateList();
  RoomInfoList _roomInfoList = RoomInfoList();

  List<Vendor> get vendorList =>_vendorList;
  ProductHouseList get houseList =>_houseList;
  RoomLocateList get roomLocateList =>roomLocateList;
  RoomInfoList get roomInfoList =>_roomInfoList;

  Future<void> requestData() async
  {
    await getVendorInfoFromDB().then((vendorResult){
     List<Vendor> tempReslut = vendorResult.object;
     print(tempReslut.length);
     print( tempReslut[0].data_id);
      getHouseInfoFromDB().then((houseReslut){
        _houseList = houseReslut.object;
      getLocateInfoFromDB().then((locateReslut){
        _roomLocateList = locateReslut.object;
      getRoomDetailsInfoFromDB().then((roomResult){
        _roomInfoList = roomResult.object;
        _instance.adopter();
        onDataReady();
    });
  });
      });
    });
  }

//////////////////////////////////////
  VerderInfoList _verderInfoList = VerderInfoList();
  HouseInfoList _houseInfoList = HouseInfoList();
  RoomLocateInfoList _roomLocateInfoList = RoomLocateInfoList();
  RoomDetailInfoList _roomDetailInfoList = RoomDetailInfoList();

  VerderInfoList get verderInfoList =>_verderInfoList;// VerderInfoList();
  HouseInfoList get houseInfoList => _houseInfoList;
  RoomLocateInfoList get  roomLocateInfoList => _roomLocateInfoList;
  RoomDetailInfoList get roomDetailInfoList => _roomDetailInfoList;

  int _productPageIndex = 0;
  int get productPageIndex =>_productPageIndex;
  void setProductPageIndex(int index)
  {
    _productPageIndex = index;
  }

  SelectTabIndex onSelectTapIndex;

  void selectTapIndex(int index)
  {
    onSelectTapIndex(index);
  }


  void adopter()
  {
      // List<VendorInfo> tempVendorList = _vendorList.vendorList;
      // for (var i = 0; i < _vendorList.vendorList.length; i++) {
      //   VendorInfo item = tempVendorList[i];
      //   VerderInfo temp = VerderInfo(item.data_id,item.vendor_icon);
      //   _verderInfoList.dataList.add(temp);
      // } 


      // List<ProductHouse> tempHouseList = _houseList.houseList;
      // for (var i = 0; i < _vendorList.vendorList.length; i++) {
      //   ProductHouse item = tempHouseList[i];
      //   HouseInfo temp = HouseInfo(item.data_id,item.house_icon,item.vendor_id);
      //   _houseInfoList.dataList.add(temp);
      // } 

      // List<RoomLocate> tempRoomLocateList = _roomLocateList.locateList;
      // for (var i = 0; i < _vendorList.vendorList.length; i++) {
      //   RoomLocate item = tempRoomLocateList[i];
      //   RoomLocateInfo temp = RoomLocateInfo(item.data_id,item.locate_name,item.locate_name,item.house_id);
      //   _roomLocateInfoList.dataList.add(temp);
      // } 

      // List<RoomInfo> tempRoomList = roomInfoList.roomDetailsList;
      // for (var i = 0; i < _vendorList.vendorList.length; i++) {
      //   RoomInfo item = tempRoomList[i];
      //   RoomDetailInfo temp = RoomDetailInfo(item.data_id,item.title,item.locate_id,item.web,item.icon_name,item.title,item.description);
      //   _roomDetailInfoList.dataList.add(temp);
      // } 
  }

  void createList()
  {
    _verderInfoList.createList(10);
    _houseInfoList.createListOnOther(30, 3);
    _roomLocateInfoList.createListOnOther(90, 3);
    _roomDetailInfoList.createListOnOther(270,3);
  }

  FilterList<HouseInfo> _houseFliter = FilterList<HouseInfo>();
  FilterList<RoomLocateInfo> _roomLocateFliter = FilterList<RoomLocateInfo>();
  FilterList<RoomDetailInfo> _roomDetailFliter = FilterList<RoomDetailInfo>();

  Iterable<HouseInfo> get filteredHouseInfo =>_houseFliter.filterList(_verderInfoList.getCurrentItem()._infoID, _houseInfoList.dataList);
  Iterable<RoomLocateInfo> get filteredRoomLocateInfo =>_roomLocateFliter.filterList(_houseInfoList.getCurrentItem()._infoID, _roomLocateInfoList.dataList);
  Iterable<RoomDetailInfo> get filteredRommDetailsInfo =>_roomDetailFliter.filterList(_roomLocateInfoList.getCurrentItem()._infoID, _roomDetailInfoList.dataList);

  int _detailIndex = 0;
  void setDetailIndex(int index){_detailIndex = index;}
  RoomDetailInfo get getCurrentRoomDetailsInfo =>filteredRommDetailsInfo.elementAt(_detailIndex);
}

import 'package:flutter_client_php_backend/futures/userInfo_futures.dart';
import 'package:flutter_client_php_backend/models/ProductHouse.dart';
import 'package:flutter_client_php_backend/models/RoomInfo.dart';
import 'package:flutter_client_php_backend/models/RoomLocate.dart';
import 'package:flutter_client_php_backend/models/Vendor.dart';

abstract class DataGenerator
{
  Iterable<BaseInfo> generateData();
}


class IndexBaseInfo
{
  final int infoID;
  IndexBaseInfo(this.infoID);
}

class IndexFilterInfo extends IndexBaseInfo
{
  final int filterID;
  IndexFilterInfo(int infoId,this.filterID):super(infoId);
}

class NameFilterInfo extends IndexFilterInfo
{
  final String  name;
  NameFilterInfo(int infoId,int filterId,this.name):super(infoId,filterId);
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

class HouseInfo extends NameFilterInfo
{
  final String url;
  HouseInfo(int id,int filterId String name,this.url):super(id,filterId,name);
}

class RoomLocateInfo extends NameFilterInfo
{  
  final String _url;
  String get url =>_url;
  RoomLocateInfo(int id,int filterId String name,this._url):super(id,filterId,name);
}

class RoomDetailInfo extends NameFilterInfo
{
  final String _url;
  final String _iconName;
  final String _title;
  final String _des;

  String get url =>_url;
  String get iconName =>_iconName;
  String get title =>_title;
  String get des =>_des;

  RoomDetailInfo(int id,int filterId String name,this._url,this._iconName,this._title,this._des):super(id,filterId,name);
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
    return HouseInfo(index,otherCount, "House" + numberStr,'');
    }
}

class RoomLocateInfoList extends CreateList<RoomLocateInfo>
{
 @override
  RoomLocateInfo creatorOther(int index,int otherCount) {
        String numberStr = (index + otherCount + 1).toString();

      return RoomLocateInfo(index, otherCount,"RoomLocate" + numberStr,"url",);
    }
}

class RoomDetailInfoList extends CreateList<RoomDetailInfo>
{
 @override
  RoomDetailInfo creatorOther(int index,int otherCount) {
    String numberStr = (index + otherCount + 1).toString();
      return RoomDetailInfo(index, otherCount,"RoomDetails" + numberStr,"url","iconName","Details " + numberStr + MockConstData.title,MockConstData.des);
    }
}

class FilterList<T extends NameFilterInfo>
{
  Iterable<T> filterList(int id, List<T> dataList)
  { 
    List<T> tempData = List<T>();
    for (var i = 0; i < dataList.length; i++)
     {  
        T data = dataList[i];
        if(data.filterID == id)
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
   }
    return _instance;
  }

///////////////////////////////////////////////////////////////////

  Function onDataReady;

  List<Vendor> _vendorList;
  List<ProductHouse> _houseList ;
  List<RoomLocate>  _roomLocateList ;
  List<RoomInfo> _roomInfoList ;

  List<Vendor> get vendorList =>_vendorList;
  List<ProductHouse> get houseList =>_houseList;
  List<RoomLocate> get roomLocateList =>roomLocateList;
  List<RoomInfo> get roomInfoList =>_roomInfoList;


  Future<void> requestData() async
  {
    await getVendorInfoFromDB().then((vendorResult){
      _vendorList = vendorResult.object;
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
    if(_verderInfoList.dataList.length <= 0)
    {
      for (var i = 0; i < _vendorList.length; i++) {
              Vendor item = _vendorList[i];
              VerderInfo temp = VerderInfo( int.parse(item.data_id)  ,item.vendor_icon);
              _verderInfoList.dataList.add(temp);
            } 
       for (var i = 0; i < _houseList.length; i++) {
        ProductHouse item = _houseList[i];
        HouseInfo temp = HouseInfo(int.parse(item.data_id),int.parse(item.vendor_id),item.house_icon,item.web);
        _houseInfoList.dataList.add(temp);
      } 

      for (var i = 0; i < _roomLocateList.length; i++) {
        RoomLocate item = _roomLocateList[i];
        RoomLocateInfo temp = RoomLocateInfo(int.parse(item.data_id),int.parse(item.house_id),item.locate_name,item.locate_name,);
        _roomLocateInfoList.dataList.add(temp);
      } 

      for (var i = 0; i < _roomInfoList.length; i++) {
        RoomInfo item = _roomInfoList[i];
        RoomDetailInfo temp = RoomDetailInfo(int.parse(item.data_id),int.parse(item.locate_id),item.title,item.web,item.icon_name,item.title,item.description);
        _roomDetailInfoList.dataList.add(temp);
      }       
    }
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
  Iterable<RoomLocateInfo> get filteredRoomLocateInfo =>_roomLocateFliter.filterList(_houseInfoList.getCurrentItem().infoID, _roomLocateInfoList.dataList);
  Iterable<RoomDetailInfo> get filteredRommDetailsInfo =>_roomDetailFliter.filterList(_roomLocateInfoList.getCurrentItem().infoID, _roomDetailInfoList.dataList);

  int _detailIndex = 0;
  void setDetailIndex(int index){_detailIndex = index;}
  RoomDetailInfo get getCurrentRoomDetailsInfo =>filteredRommDetailsInfo.elementAt(_detailIndex);
}
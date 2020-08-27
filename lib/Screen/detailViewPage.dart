import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:shoppingscreen/Common/fontColor.dart';

final List<String> imgList = [
  "assets/slide0.png",
  "assets/slide1.png",
  "assets/slide2.png",
  "assets/slide3.png"
];

class DetailViewPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DetailViewPage>{
  List<String> quantityArray = ['1','2','3','4','5'];
  List<String> sareeNameArray = ['Paithani','Bomkai','Paithani','Bomkai','Paithani','Bomkai','Paithani','Bomkai'];
  List<String> rateArray = ['1200','2500','1200','2500','1200','2500','1200','2500'];
  List<String> crossRateArray = ['1800','3800','1800','3800','1800','3800','1800','3800'];
  var selectedQuantity;
  TextEditingController questionController = new TextEditingController();
  int _current = 0;
  List<Item> itemList;


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    itemList = _itemList();
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    var headerBlock = new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text('Bandhani',style: TextStyle(color: greenTextColor,fontSize: 22.0,fontWeight: FontWeight.bold,fontFamily: "Poppins-Medium"),),
            Spacer(),
            new Image.asset('assets/rating.png',width: 85.0,),
            SizedBox(width: 3.0,),
            new Text('(1,735)',style: TextStyle(color: greyTextColor,fontSize: 15.0,fontFamily: "Poppins-Regular"),),
          ],
        ),
        SizedBox(height: 10.0,),
        new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: deviceWidth*0.65,
              child: new Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(color: greyTextColor,fontSize: 15.0,fontFamily: "Poppins-Regular"),)
            ),
            Spacer(),
            new Image.asset('assets/share.png'),
          ],
        ),

      ],
    );

    var imageSliderBlock = new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 35.0),
              child: new Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.only(left: 15.0,right: 5.0,bottom: 5.0,top: 10.0),
                decoration: new BoxDecoration(
                  color: redTextColor,
                  borderRadius: new BorderRadius.circular(50),
                ),
                child: new Text('30% off',style: TextStyle(color: whiteTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular",letterSpacing: 0.4),),
              ),
            ),
            Spacer(),
            Container(
              height: deviceHeight*0.4,
              child: Column(
                children: <Widget>[
                  Container(
                    width: deviceWidth*0.6,
                    height: deviceHeight*0.36,
                    child: CarouselSlider(
                      items: imageSliders,
                      options: CarouselOptions(
                          autoPlay: false,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.map((url) {
                      int index = imgList.indexOf(url);
                      return Container(
                        width: 12.0,
                        height: 12.0,
                        margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: greyTextColor,
                            width: 1.0
                          ),
                          shape: BoxShape.circle,
                          color: _current == index
                              ? greyTextColor
                              : whiteTextColor,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(top: 35.0),
              child: new Image.asset('assets/heart.png'),
            ),
          ],
        ),
      ],
    );

    var imageColorSelectionBlock = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text('Colour : ',style: TextStyle(color: blackTextColor,fontSize: 17.0,fontFamily: "Poppins-Regular"),),
            new Text('Margenta',style: TextStyle(color: greyShadeColor,fontSize: 17.0,fontFamily: "Poppins-Regular"),),
          ],
        ),
        SizedBox(height: 10.0,),
        new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Image.asset('assets/slidecolor0.png'),
            Spacer(),
            new Image.asset('assets/slidecolor1.png'),
            Spacer(),
            new Image.asset('assets/slidecolor2.png'),
            Spacer(),
            new Image.asset('assets/slidecolor3.png'),
            Spacer(),
            new Image.asset('assets/slidecolor4.png'),
          ],
        ),

      ],
    );

    var tableBlock = new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Table(
          border: TableBorder.all(width: 1.0, color: greyTextColor),
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 11,bottom: 11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Image.asset('assets/discount.png'),
                        SizedBox(width: 15.0,),
                        new Text('Save Extra',style: TextStyle(color: redTextColor,fontSize: 19.0,fontFamily: "Poppins-Medium"),),
                        SizedBox(width: 10.0,),
                        new Text('with 5 Offers',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Medium"),),
                      ],
                    ),
                  ),
                )
              ]
            ),
            TableRow(
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(Radius.circular(8.0)),
                ),
                children: [
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 15,bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Text('No Cost EMI : ',style: TextStyle(color: redTextColor,fontSize: 19.0,fontFamily: "Poppins-Medium"),),
                          new Text('Lorem Ipsum is simply',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Medium"),),
                          Spacer(),
                          new Image.asset('assets/forward_arrow.png'),
                        ],
                      ),
                    ),
                  )
                ]
            ),
            TableRow(
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(Radius.circular(8.0)),
                ),
                children: [
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 15,bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Text('Cashback : ',style: TextStyle(color: redTextColor,fontSize: 19.0,fontFamily: "Poppins-Medium"),),
                          new Text('Lorem Ipsum is simply',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Medium"),),
                          Spacer(),
                          new Image.asset('assets/forward_arrow.png'),
                        ],
                      ),
                    ),
                  )
                ]
            ),
            TableRow(
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(Radius.circular(8.0)),
                ),
                children: [
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 18,bottom: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Text('See 3 more Offers',style: TextStyle(color: blueTextColor,fontSize: 17.0,fontFamily: "Poppins-Regular"),),
                        ],
                      ),
                    ),
                  )
                ]
            ),
          ],
        ),
      ],
    );

    var timelineBlock = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text('Free Delivery by',style: TextStyle(color: greyTextColor,fontSize: 17.0,fontFamily: "Poppins-Regular"),),
            SizedBox(width: 3.0,),
            new Text('Sunday 10 July 2020',style: TextStyle(color: blackTextColor,fontSize: 17.0,fontFamily: "Poppins-Regular"),),
          ],
        ),
        SizedBox(height: 3.0,),
        new Text('If order Before 01:00 PM',style: TextStyle(color: greyTextColor,fontSize: 15.0,fontFamily: "Poppins-Regular"),),
        SizedBox(height: 20.0,),
        new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text('Qty',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Medium"),),
            SizedBox(width: 10.0,),
            Container(
              width: deviceWidth*0.15,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10),
                  color: dropdownColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: new DropdownButton<String>(
                  hint: new Text('1',style: TextStyle(color: blackTextColor,fontSize: 17.0),),
                  items: quantityArray.map((String dropDownStringItem){
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  onChanged: (String newValueSelected){
                    setState(() {
                      this.selectedQuantity = newValueSelected;
                    });
                  },
                  isDense: false,
                  style: TextStyle(color: blackTextColor,fontSize: 17.0,fontFamily: "Poppins-Medium"),
                  value: selectedQuantity,
                  isExpanded: true,
                  icon: Image.asset('assets/dropdown.png'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 25.0,),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color: greenTextColor,
                borderRadius: new BorderRadius.circular(10),
              ),
              height: 50.0,
              child: new FlatButton(
                child: new Text(
                  'Add to Cart',
                  style: TextStyle(color: whiteTextColor,fontSize: 17,fontFamily: "Poppins-Medium")
                ),
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: deviceWidth*0.25),
              ),
            ),
          ]
        ),
        SizedBox(height: 20.0,),
        new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  color: greenTextColor,
                  borderRadius: new BorderRadius.circular(10),
                ),
                height: 50.0,
                child: new FlatButton(
                  child: new Text(
                      'Buy Now',
                      style: TextStyle(color: whiteTextColor,fontSize: 17,fontFamily: "Poppins-Medium")
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: deviceWidth*0.27),
                ),
              ),
            ]
        )

      ],
    );

    var queryBlock = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text('Have an Question?',style: TextStyle(color: blackBold,fontSize: 22.0,fontWeight: FontWeight.bold,fontFamily: "Poppins-Medium"),),
        SizedBox(height: 10.0,),
        new Text('Find Answer in Product info, Q&As, Reviews',style: TextStyle(color: greyTextColor,fontSize: 15.0,fontFamily: "Poppins-Regular"),),
        SizedBox(height: 15.0,),
        new Container(
          decoration: new BoxDecoration(
            border: Border.all(
                color: borderColor,
                width: 1.0
            ),
            color: whiteTextColor,
          ),
          height: 50.0,
          child: new TextField(
            controller: questionController,
            style: TextStyle(color: greyTextColor,fontSize: 19,fontFamily: "Poppins-Regualar"),
            decoration: new InputDecoration(
                border: InputBorder.none,
                hintText: 'Type your Question or Keywords', hintStyle: TextStyle(color: greyTextColor,fontSize: 19,fontFamily: "Poppins-Regualar"),prefixIcon: new Image.asset('assets/search.png')),
          ),
        ),

      ],
    );

    var descriptionBlock = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text('About This Item',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
        SizedBox(height: 10.0,),
        new Container(
          height: 2,
          width: deviceWidth*0.4,
          color: greenTextColor,
        ),
        SizedBox(height: 15.0,),
        new Row(
          children: <Widget>[
            new Container(
              width: deviceWidth*0.35,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 10,
                        width: 10,
                        decoration: new BoxDecoration(
                          color: blackBold,
                          borderRadius: new BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(width: 15.0,),
                      new Text('Fit Type',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 10,
                        width: 10,
                        decoration: new BoxDecoration(
                          color: blackBold,
                          borderRadius: new BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(width: 15.0,),
                      new Text('Fabric',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 10,
                        width: 10,
                        decoration: new BoxDecoration(
                          color: blackBold,
                          borderRadius: new BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(width: 15.0,),
                      new Text('Style',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 10,
                        width: 10,
                        decoration: new BoxDecoration(
                          color: blackBold,
                          borderRadius: new BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(width: 15.0,),
                      new Text('Neck Style',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 10,
                        width: 10,
                        decoration: new BoxDecoration(
                          color: blackBold,
                          borderRadius: new BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(width: 15.0,),
                      new Text('Pattern',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 10,
                        width: 10,
                        decoration: new BoxDecoration(
                          color: blackBold,
                          borderRadius: new BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(width: 15.0,),
                      new Text('Sleeve Type',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                    ],
                  ),
                ],
              ),
            ),
            new Container(
              width: deviceWidth*0.07,
              child: new Column(
                children: <Widget>[
                  new Text(':',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                  SizedBox(height: 8.0,),
                  new Text(':',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                  SizedBox(height: 8.0,),
                  new Text(':',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                  SizedBox(height: 8.0,),
                  new Text(':',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                  SizedBox(height: 8.0,),
                  new Text(':',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                  SizedBox(height: 8.0,),
                  new Text(':',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                ],
              ),
            ),
            new Container(
              width: deviceWidth*0.3,
              child: new Column(
                children: <Widget>[
                  new Text('Lorem Ipsum',style: TextStyle(color: greyShadeColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                  SizedBox(height: 8.0,),
                  new Text('Lorem Ipsum',style: TextStyle(color: greyShadeColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                  SizedBox(height: 8.0,),
                  new Text('Lorem Ipsum',style: TextStyle(color: greyShadeColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                  SizedBox(height: 8.0,),
                  new Text('Lorem Ipsum',style: TextStyle(color: greyShadeColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                  SizedBox(height: 8.0,),
                  new Text('Lorem Ipsum',style: TextStyle(color: greyShadeColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                  SizedBox(height: 8.0,),
                  new Text('Lorem Ipsum',style: TextStyle(color: greyShadeColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 25.0,),
        new Text('Description',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
        SizedBox(height: 10.0,),
        new Container(
          height: 2,
          width: deviceWidth*0.4,
          color: greenTextColor,
        ),
        SizedBox(height: 25.0,),
        new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. \n\nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",style: TextStyle(color: blackTextColor,fontSize: 18.0,fontFamily: "Poppins-Regular"),),
        new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Text('See Less',style: TextStyle(color: blueTextColor,fontSize: 15.0,fontFamily: "Poppins-Regular"),),
          ],
        ),
      ],
    );

    var similarProductBlock = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            new Text('Similar Products',style: TextStyle(color: blackTextColor,fontSize: 19.0,fontFamily: "Poppins-Regular"),),
            SizedBox(width: deviceWidth*0.46,),
            new Text('view all',style: TextStyle(color: blueTextColor,fontSize: 15.0,fontFamily: "Poppins-Regular"),),
            Spacer(),
            new Image.asset('assets/viewAll.png'),
          ],
        ),
        SizedBox(height: 10.0,),
        new Container(
          height: 2,
          width: deviceWidth*0.4,
          color: greenTextColor,
        ),
        SizedBox(height: 15.0,),
      ],
    );

    return Scaffold(
      appBar: null,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                new Container(
                  child:new Column(
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                        child: headerBlock,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0,),
                        child: imageSliderBlock,
                      ),

                      new Container(
                        height: 2,
                        color: greyTextColor,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0,bottom: 30.0),
                        child: imageColorSelectionBlock,
                      ),

                      new Container(
                        height: 2,
                        color: greyTextColor,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0,bottom: 30.0),
                        child: tableBlock,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0),
                        child: timelineBlock,
                      ),

                      new Container(
                        height: 2,
                        color: greyTextColor,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0,bottom: 30.0),
                        child: queryBlock,
                      ),

                      new Container(
                        height: 2,
                        color: greyTextColor,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0,bottom: 30.0),
                        child: descriptionBlock,
                      ),

                      Container(
                        color: dropdownColor,
                        padding: EdgeInsets.only(left: 20.0, right: 20.0, top:30.0, bottom: 30.0),
                        child: Column(
                          children: <Widget>[
                            similarProductBlock,
                            Container(
                              height: deviceHeight*0.8,
                              child:  GridView.count(
                                crossAxisCount: 2,
                                padding: EdgeInsets.all(4.0),
                                childAspectRatio: 7.0 / 12.0,
                                children: itemList.map((Item) => ItemList(item: Item),).toList(),
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Item> _itemList() {
    return [
      Item(
        image: 'assets/pic0.png',
        sareeName: 'Paithani',
        rate: '1200',
        crossRate: '1800'
      ),
      Item(
          image: 'assets/pic1.png',
          sareeName: 'Bomkai',
          rate: '2500',
          crossRate: '3800'
      ),
      Item(
          image: 'assets/pic2.png',
          sareeName: 'Paithani',
          rate: '1200',
          crossRate: '1800'
      ),
      Item(
          image: 'assets/pic3.png',
          sareeName: 'Bomkai',
          rate: '2500',
          crossRate: '3800'
      ),
      Item(
          image: 'assets/pic4.png',
          sareeName: 'Paithani',
          rate: '1200',
          crossRate: '1800'
      ),
      Item(
          image: 'assets/pic5.png',
          sareeName: 'Bomkai',
          rate: '2500',
          crossRate: '3800'
      ),
      Item(
          image: 'assets/pic6.png',
          sareeName: 'Paithani',
          rate: '1200',
          crossRate: '1800'
      ),
      Item(
          image: 'assets/pic7.png',
          sareeName: 'Bomkai',
          rate: '2500',
          crossRate: '3800'
      ),
    ];
  }

}

final List<Widget> imageSliders = imgList.map((item) => Container(
  margin: EdgeInsets.only(left: 14.0,right: 14.0),
  decoration: new BoxDecoration(
      color: whiteTextColor,
      image: new DecorationImage(
        image: ExactAssetImage(item),
        fit: BoxFit.fill,
      ),
      borderRadius: new BorderRadius.all(Radius.circular(1.0)),
  ),
)).toList();



class ItemList extends StatelessWidget {
  final Item item;

  const ItemList({@required this.item});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Card(
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 15.0 / 14.7,
                child: Image.asset(
                  item.image,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 15.0,),
              new Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(item.sareeName,style: TextStyle(color: greenTextColor,fontSize: 19.0,fontFamily: "Poppins-Medium",fontWeight: FontWeight.bold),),
                    SizedBox(height: 10.0,),
                    new Row(
                      children: <Widget>[
                        new Image.asset('assets/rupee.png',height: 15.0,),
                        SizedBox(width: 5.0,),
                        new Text(item.rate,style: TextStyle(color: blackBold,fontSize: 22.0,fontFamily: "Poppins-Medium"),),
                        Spacer(),
                        new Text("₹ "+item.crossRate,style: TextStyle(color: greyTextColor,fontSize: 15.0,fontFamily: "Poppins-Medium",decoration: TextDecoration.lineThrough),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              new Container(
                decoration: new BoxDecoration(
                  color: greenTextColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  ),
                ),
                height: 50.0,
                width: deviceWidth*0.422,
                child: new FlatButton(
                  child: new Text(
                      'Add to Cart',
                      style: TextStyle(color: whiteTextColor,fontSize: 17,fontFamily: "Poppins-Medium")
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: deviceWidth*0.10),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 8.0,left: 8.0),
            child: new Text('30% off',style: TextStyle(color: whiteTextColor,fontSize: 14.0,fontFamily: "Poppins-Regular",letterSpacing: 0.4),),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(top: 8.0,right: 8.0),
            child: new Image.asset('assets/white_heart.png'),
          ),
        )
      ],
    );
  }
}


class Item {
  String image;
  String sareeName;
  String rate;
  String crossRate;

  Item({
    @required this.image,
    @required this.sareeName,
    @required this.rate,
    @required this.crossRate,
  });
}
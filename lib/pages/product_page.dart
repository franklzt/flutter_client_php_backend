import 'package:flutter/material.dart';
import 'package:flutter_client_php_backend/help_pages/vender_page.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> 
{
   VenderPage vernderPage;
  final String title = "ProdcutPage";
  @override
  Widget build(BuildContext context) {
    vernderPage = VenderPage();
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          color: Colors.blue,
          child:VenderPage(),  // With this highlighted text.
        ),
      ),
    );
  }
}
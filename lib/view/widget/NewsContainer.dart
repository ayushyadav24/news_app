import 'package:flutter/material.dart';
import 'package:news/view/detail_view.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDesc;
  String newsUrl;
  String newsCnt;

  NewsContainer({
    required this.imgUrl,
    required this.newsHead,
    required this.newsDesc,
    required this.newsCnt,
    required this.newsUrl,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          
          FadeInImage.assetNetwork(
              height: 350,
              width: MediaQuery.of(context).size.width,
              fit : BoxFit.cover,
              placeholder: "assets/img/placeholder.jpg", image: imgUrl),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [

              SizedBox(height: 20,),

              Text(
                newsHead.length > 70 ?
                "${newsHead.substring(0, 70)}..." : newsHead,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),


              SizedBox(height: 15,),
              Text(newsDesc, style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black38
              ),),
              SizedBox(height: 15,),
              
              Text(
                newsCnt != "--" ?
                newsCnt.length > 200 ?
                "${newsCnt.substring(0, newsCnt.length-15)}..." :
                newsCnt.substring(0, 200) : newsCnt,
                style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                // color: Colors.black54,
              ),),
            ],
          ),
        ),

        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailViewScreen(newsUrl: newsUrl)));
              },
                  child: Text("Read More"),
              ),
            ),
          ],
        ),
          SizedBox(height: 15,)
      ],),
    );
  }
}

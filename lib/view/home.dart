import 'package:flutter/material.dart';
import 'package:news/controller/fetchNews.dart';
import 'package:news/model/newsArt.dart';
import 'package:news/view/widget/NewsContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isLoading = true;

  late  NewsArt newsArt;

  GetNews() async{
    newsArt = await FetchNews.fetchNews();

    setState(() {
        isLoading = false;
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
          onPageChanged: (value)
          {
            setState(() {
              isLoading = true;
            });
            GetNews();
          },
          itemBuilder: (context, index){

          return isLoading ? Center(child: CircularProgressIndicator(),) :  NewsContainer(
              imgUrl:
                newsArt.imgUrl,
              newsHead:
                    newsArt.newsHead,
              newsDesc:
                    newsArt.newsDesc,
              newsCnt:
                    newsArt.newsCnt,
              newsUrl:
                    newsArt.newsUrl);
    }),
    );
  }
}

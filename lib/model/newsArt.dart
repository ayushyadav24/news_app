class NewsArt{
  String imgUrl;
  String newsHead;
  String newsDesc;
  String newsCnt;
  String newsUrl;

  // constructor of the following class
  NewsArt({
   required this.imgUrl,
   required this.newsHead,
   required this.newsDesc,
   required this.newsCnt,
   required this.newsUrl,
});

  // creating a method
  // that will link api to app
  static NewsArt fromAPItoApp(Map <String, dynamic> article){
    
    return NewsArt(imgUrl: article["urlToImage"] ?? "https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=612x612&w=0&k=20&c=9pR2-nDBhb7cOvvZU_VdgkMmPJXrBQ4rB1AkTXxRIKM=",
        newsHead: article["title"] ?? "--",
        newsDesc: article["description"] ?? "--",
        newsCnt: article["content"] ?? "--",
        newsUrl: article["url" ?? "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en"]);
    
  }

}
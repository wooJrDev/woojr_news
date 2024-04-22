import 'package:http/http.dart' as http;

void main() {
  NewsRepo news = NewsRepo();
  
  // news.getAllNews();
  // news.getTrendingNews();
  news.getRecentNews();
}

class NewsRepo {
    var mainUrl = 'newsapi.org';
    var apiKey = '84b1854732b34566beb8bc30c4918aed';
    var searchQuery = 'bitcoin';
  

  getAllNews() async {
    var url = Uri.https(mainUrl, '/v2/everything', {'q': 'bitcoin', 'apiKey': apiKey});
    print(url);  

    var response = await http.get(url);

    print(response.body);
  }

  getTrendingNews() async {
    var url = Uri.https(mainUrl, 'v2/top-headlines', {'country': 'my', 'apiKey': apiKey});
    print(url);  

    var respone = await http.get(url);

    if (respone.statusCode == 200) {
      respone.body
    } 
  }

  getRecentNews() async {
    var url = Uri.https(mainUrl, 'v2/everything', {'q': 'apple', 'from': '2024-04-05', 'apiKey': apiKey});

    print(url);
  }

}
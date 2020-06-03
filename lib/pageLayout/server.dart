import 'package:http/http.dart'   as http;



class server{
    static   Future<http.Response> newsInfo(String country ,String category){
         var url= "http://newsapi.org/v2/top-headlines?country=$country&category=$category&apiKey=bd1ee0fb430647729e10fd610cb10cef" ;
         return http.get(url);

       }
    static   Future<http.Response> homepagecontent(String country ) {
      var url = "http://newsapi.org/v2/top-headlines?country=$country&apiKey=bd1ee0fb430647729e10fd610cb10cef";
      return http.get(url);
    }
}
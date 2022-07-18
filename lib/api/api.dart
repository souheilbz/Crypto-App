import 'package:crypto/models/fetchCoins_models/big_data_model.dart';
import 'package:dio/dio.dart';

class Api{
  static String mainUrl = "https://pro-api.coinmarketcap.com/v1/";
  final String apiKey = "c0c0cad0-fe8d-463c-8baa-f0bf2017e6ff";
  var currencyListingAPI = '${mainUrl}cryptocurrency/listings/latest';
  Dio _dio = Dio();
  Future<BigDataModel> getCoins() async {
    try {
      _dio.options.headers["X-CMC_PRO_API_KEY"] = apiKey;
      Response response = await _dio.get(currencyListingAPI);
      return BigDataModel.fromJson((response.data));
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return BigDataModel.withError("error");
    }
  }
}
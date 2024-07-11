import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';
import 'package:texnomart/domain/repo/repo.dart';
import 'package:texnomart/domain/repo_impl.dart';

final diDio = GetIt.instance;

final dio =Dio(BaseOptions(
baseUrl:'https://gateway.texnomart.uz/api/'
));


void setUp(){
 // dio.interceptors.add(
 //    TalkerDioLogger(
 //      settings:const TalkerDioLoggerSettings(
 //        printRequestHeaders:true,
 //        printRequestData:true,
 //        printResponseData:true,
 //        printResponseHeaders: true,
 //        printResponseMessage: true
 //      )
 //    )
 // );

  diDio.registerSingleton<ApiService>(ApiService(dio));
  diDio.registerSingleton<Repo>(RepoImpl());
}
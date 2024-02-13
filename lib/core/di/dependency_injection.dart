import 'package:dio/dio.dart';
import 'package:doctor_appointment_app/core/networking/api_service.dart';
import 'package:doctor_appointment_app/core/networking/dio_factory.dart';
import 'package:doctor_appointment_app/features/login/data/repos/login_repo.dart';
import 'package:doctor_appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doctor_appointment_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

Future <void> setUpGetIt() async {
// Dio & Api Service
Dio dio = DioFactory.getDio();
getit.registerLazySingleton<ApiService>(() => ApiService(dio));

// login 
getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));

// sign up
getit.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getit()));
getit.registerFactory<SignUpCubit>(() => SignUpCubit(getit())); 

// home 

}
import 'package:get_it/get_it.dart';
import 'package:sense_more/business_logic/cubit/home_cubit/home_cubit.dart';
import 'package:sense_more/business_logic/cubit/login_cubit/login_cubit.dart';
import 'package:sense_more/business_logic/cubit/profile_cubit/profile_cubit.dart';
import 'package:sense_more/business_logic/cubit/register_cubit/register_cubit.dart';
import 'package:sense_more/business_logic/cubit/search_cubit/search_cubit.dart';
import 'package:sense_more/business_logic/cubit/settings_cubit/settings_cubit.dart';
import 'package:sense_more/core/shared/bluetooth_helper.dart';
import 'package:sense_more/data/repository/home_repository.dart';
import 'package:sense_more/data/repository/login_repositorey.dart';
import 'package:sense_more/data/repository/search_repository.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository());

  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt<LoginRepository>()));

  getIt.registerLazySingleton<RegisterCubit>(() => RegisterCubit());

  getIt.registerLazySingleton<HomeRepository>(() => HomeRepository());

  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt<HomeRepository>()));

  getIt.registerLazySingleton<ProfileCubit>(() => ProfileCubit());
  
  getIt.registerLazySingleton<SearchRepository>(() => SearchRepository());

  getIt.registerLazySingleton<SearchCubit>(() => SearchCubit(getIt<SearchRepository>())..getAllRooms());

  getIt.registerLazySingleton<SettingsCubit>(() => SettingsCubit());

  getIt.registerSingleton<BluetoothHelper>(BluetoothHelper());

}
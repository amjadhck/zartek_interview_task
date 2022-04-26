// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/bloc/cart_bloc.dart' as _i7;
import '../../application/food_response/food_bloc.dart' as _i8;
import '../../infrastructure/cart/cart_repositery.dart' as _i4;
import '../../infrastructure/food_response/food_repositery.dart' as _i6;
import '../cart/cart_repo.dart' as _i3;
import '../food_response/food_repo.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.CartRepo>(() => _i4.CartRepositery());
  gh.lazySingleton<_i5.FoodResponseRepo>(() => _i6.FoodRepositery());
  gh.factory<_i7.CartBloc>(() => _i7.CartBloc(get<_i3.CartRepo>()));
  gh.factory<_i8.FoodBloc>(() => _i8.FoodBloc(get<_i5.FoodResponseRepo>()));
  return get;
}

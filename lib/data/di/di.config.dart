// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/chat_screen/ui/cubit/chat_screen_cubit.dart' as _i924;
import '../data_source/get_messages_from_gemini_data_source.dart' as _i397;
import '../data_source/get_messages_from_gemini_data_source_impl.dart' as _i593;
import '../repository/get_messages_from_gemini_repository.dart' as _i852;
import '../repository/get_messages_from_gemini_repository_impl.dart' as _i639;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i397.GetMessagesFromGeminiDataSource>(
        () => _i593.GetMessagesFromGeminiDataSourceImpl());
    gh.factory<_i852.GetMessagesFromGeminiRepository>(() =>
        _i639.GetMessagesFromGeminiRepositoryImpl(
            dataSource: gh<_i397.GetMessagesFromGeminiDataSource>()));
    gh.factory<_i924.ChatScreenCubit>(() => _i924.ChatScreenCubit(
        repository: gh<_i852.GetMessagesFromGeminiRepository>()));
    return this;
  }
}

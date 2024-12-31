// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'application/auth/auth_form/auth_form_bloc.dart' as _i429;
import 'application/note/form/note_form_bloc.dart' as _i861;
import 'application/note/note_fetch_bloc.dart' as _i561;
import 'domain/auth/i_auth_facade.dart' as _i878;
import 'domain/form/i_note_add_form_facade.dart' as _i501;
import 'domain/note/i_note_facade.dart' as _i96;
import 'infrastructure/fire_note_add_facade.dart' as _i546;
import 'infrastructure/firebase_auth_facade.dart' as _i471;
import 'infrastructure/firebase_note_fetch_facade.dart' as _i336;
import 'infrastructure/module_injection.dart' as _i866;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i59.FirebaseAuth>(
      () => registerModule.firebaseAuth,
      preResolve: true,
    );
    await gh.factoryAsync<_i974.FirebaseFirestore>(
      () => registerModule.firebaseFireStore,
      preResolve: true,
    );
    gh.lazySingleton<_i96.INoteFacade>(
        () => _i336.FireBaseNoteFetchFacade(gh<_i974.FirebaseFirestore>()));
    gh.lazySingleton<_i501.INoteAddFormFacade>(
        () => _i546.FirebaseNoteAddFacade(gh<_i974.FirebaseFirestore>()));
    gh.factory<_i861.NoteFormBloc>(
        () => _i861.NoteFormBloc(gh<_i501.INoteAddFormFacade>()));
    gh.factory<_i561.NoteFetchBloc>(
        () => _i561.NoteFetchBloc(gh<_i96.INoteFacade>()));
    gh.lazySingleton<_i878.IAuthFacade>(
        () => _i471.FirebaseAuthFacade(gh<_i59.FirebaseAuth>()));
    gh.factory<_i429.AuthFormBloc>(
        () => _i429.AuthFormBloc(gh<_i878.IAuthFacade>()));
    return this;
  }
}

class _$RegisterModule extends _i866.RegisterModule {}

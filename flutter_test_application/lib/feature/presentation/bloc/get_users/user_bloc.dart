import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_application/feature/model/user.dart';
import 'package:flutter_test_application/feature/presentation/bloc/get_users/user_event.dart';
import 'package:flutter_test_application/feature/presentation/bloc/get_users/user_state.dart';
import 'package:flutter_test_application/feature/services/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository getAllUsers;

  UserBloc({required this.getAllUsers}) : super(UserEmptyState()) {
    on<UserLoadEvent>(
      (event, emit) async {
        emit(UserInternetState());
        emit(UserLoadingState());
        try {
          final List<User> loadedUserList =
              await getAllUsers.getAllUsers();
          emit(UserLoadedState(loadedUser: loadedUserList));
        } catch (_) {
          
          emit(UserErrorState());
        }
      },
    );
    on<UserClearEvent>((event, emit) async {
      emit(UserEmptyState());
    });
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'post_list_bloc.freezed.dart';

class PostListBloc extends Bloc<PostListEvent, PostListState> {
  PostListBloc() : super(_Initial()) {
    on<_Load>((event, emit) async {
      try {
        emit(_Loading());
        /*  */
        emit(_Done());
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}

@freezed
sealed class PostListEvent with _$PostListEvent {
  const factory PostListEvent.load() = _Load;
}

@freezed
sealed class PostListState with _$PostListState {
  const PostListState._();
  const factory PostListState.init() = _Initial;
  const factory PostListState.loading() = _Loading;
  const factory PostListState.done() = _Done;
  const factory PostListState.error(String error) = _Error;
}

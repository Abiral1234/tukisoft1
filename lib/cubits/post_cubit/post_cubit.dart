import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/cubits/post_cubit/post_state.dart';
import 'package:my_app/repositories/post_repository.dart';

import '../../model/post_model.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostLoadingState()) {
    fetchPosts();
  }

  PostRepository postRepository = PostRepository();
  void fetchPosts() async {
    try {
      List<PostModel> posts = await postRepository.fetchPosts();
      emit(PostLoadedState(posts));
    } catch (ex) {
      emit(PostErrorState(ex.toString()));
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/widgets/post_widget.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_edu_first_task/bloc/post_list_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PostListBloc _postListBloc = PostListBloc();

  @override
  void initState() {
    super.initState();
    _postListBloc.add(const PostListEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: RefreshIndicator(
        onRefresh: () async {
          _postListBloc.add(const PostListEvent.load());
        },
        child: BlocBuilder<PostListBloc, PostListState>(
          bloc: _postListBloc,
          builder: (context, state) {
            return state.map(
              init: (_) => Text('빈화면입니다.'),
              loading: (_) => Center(child: CircularProgressIndicator()),
              done: (doneState) {
                final posts = doneState.postList.list;
                return ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return PostWidget(post: posts[index]);
                  },
                );
              },
              error:
                  (errorState) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Error: ${errorState.error}'),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            context.read<PostListBloc>().add(
                              const PostListEvent.load(),
                            );
                          },
                          child: Text('Retry'),
                        ),
                      ],
                    ),
                  ),
            );
          },
        ),
      ),
    );
  }
}

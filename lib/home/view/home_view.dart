import 'package:cat_repository/cat_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma_challenge/home/home.dart';
import 'package:pragma_challenge/utils/extensions/sizebox.dart';
import 'package:pragma_challenge/utils/utils.dart';
import 'package:searchable_listview/searchable_listview.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.status.isError) {
          context.showSnackBar(message: 'Ocurrió un error');
        }
      },
      buildWhen: (previous, current) =>
          current.status.isSuccess || current.status.isLoading,
      builder: (context, state) {
        if (state.status.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Column(
          children: [
            24.0.heightBox,
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SearchableList<Cat>(
                  initialList: state.cats,
                  builder: (cat) => CatCard(cat: cat),
                  filter: (value) => state.cats
                      .where(
                        (element) => element.name.toLowerCase().contains(value),
                      ).toList(),
                  emptyWidget: const Text('No cats'),
                  autoFocusOnSearch: false,
                  inputDecoration: InputDecoration(
                    labelText: 'Search cat breed',
                    isDense: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            )
/*            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, pos) {
                  return CatCard(cat: state.cats[pos]);
                },
                itemCount: state.cats.length,
              ),
            ),*/
          ],
        );
      },
    );
  }
}

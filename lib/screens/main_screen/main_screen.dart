import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:value_listanable_example/data/server_api/models/models/category.dart';
import 'package:value_listanable_example/theme/color_theme.dart';
import 'package:value_listanable_example/theme/text_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'news_bloc/news_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsBloc>(
        create: (BuildContext context) => NewsBloc()..add(NewsEvent.initial()),
        child: BlocConsumer<NewsBloc, NewsState>(listener: (context, state) {
          state.maybeWhen(
              // error: (_error) => ScaffoldMessenger.of(context)
              //     .showSnackBar(SnackBar(content: Text(_error.toString()))),
              orElse: () {});
        }, builder: (context, state) {
          return state.maybeMap(
            orElse: () => Center(
              child: Text('Error'),
            ),
            loading: (_) => Center(
              child: Text('Error'),
            ),
            data: (_data) => Scaffold(
              appBar: _CustomAppBar(
                category: _data.category,
              ),
            ),
          );
        }));
  }
}

class _MainScreenBody extends StatelessWidget {
  const _MainScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Category>? category;
  const _CustomAppBar({Key? key, required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.news,
                style: TextThemes.appBarTitle,
              ),
              InkWell(
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/lang.png'))),
                ),
              )
            ],
          ),
          Container(
            height: 30,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: category!.length,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          primary: category![index].active!
                              ? ColorPalette.white
                              : ColorPalette.gray,
                          backgroundColor: category![index].active!
                              ? ColorPalette.green
                              : ColorPalette.unselectBottom,
                          // onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(category![index].name.toString())),
                  );
                }),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(200);
}

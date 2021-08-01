import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:value_listanable_example/data/server_api/models/models/article.dart';
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
              data: (_data) {
                print("DATA ${_data.articles}");
                return Scaffold(
                  appBar: _CustomAppBar(
                    category: _data.category,
                    // articles: _data.articles,
                  ),
                  body: BlocProvider.value(
                    value: NewsBloc(),
                    child: _MainScreenBody(
                      articles: _data.articles,
                    ),
                  ),
                );
              });
        }));
  }
}

class _MainScreenBody extends StatelessWidget {
  final List<Article>? articles;
  const _MainScreenBody({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: articles!.length,
        itemBuilder: (_, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                Container(
                  width: 320,
                  height: 156,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              articles![index].outputImages!.first.url!),
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: 320,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        articles![index].title,
                        style: TextThemes.cardTitle,
                      ),
                      new IconButton(
                        padding: new EdgeInsets.all(0.0),
                        color: ColorPalette.blue,
                        icon: new Icon(Icons.chevron_right_sharp, size: 18.0),
                        onPressed: () {},
                      )
                      // IconButton(icon: Icon(), onPressed: () {})
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final List<Article>? articles;
  final List<Category>? category;
  const _CustomAppBar({
    Key? key,
    required this.category,
  }) : super(key: key);
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
                onTap: () {},
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
                              ? ColorPalette.gray
                              : ColorPalette.white,
                          backgroundColor: category![index].active!
                              ? ColorPalette.unselectBottom
                              : ColorPalette.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        onPressed: () {
                          context.read<NewsBloc>().add(NewsEvent.selectCategory(
                              id: category![index].id));
                        },
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
  Size get preferredSize => Size.fromHeight(100);
}

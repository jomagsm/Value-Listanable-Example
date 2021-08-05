import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:value_listanable_example/components/circular_progress.dart';
import 'package:value_listanable_example/data/server_api/models/models/article.dart';
import 'package:value_listanable_example/data/server_api/models/models/category.dart';
import 'package:value_listanable_example/provider/locale_provider.dart';
import 'package:value_listanable_example/screens/article_screen/article_screen.dart';
import 'package:value_listanable_example/theme/color_theme.dart';
import 'package:value_listanable_example/theme/text_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'news_bloc/news_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    return BlocProvider<NewsBloc>(
        create: (BuildContext context) => NewsBloc()
          ..add(NewsEvent.initial(locale: provider.getLocaleCode())),
        child: BlocConsumer<NewsBloc, NewsState>(listener: (context, state) {
          state.maybeWhen(
              // error: (_error) => ScaffoldMessenger.of(context)
              //     .showSnackBar(SnackBar(content: Text(_error.toString()))),
              orElse: () {});
        }, builder: (context, state) {
          return state.maybeMap(
              loadFailure: (error) => Scaffold(
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(),
                        Text(error.toString()),
                        ElevatedButton(
                            onPressed: () {
                              NewsBloc()
                                ..add(NewsEvent.initial(
                                    locale: provider.getLocaleCode()));
                            },
                            child: Text('Повторить'))
                      ],
                    ),
                  ),
              orElse: () => Center(
                    child: Text('Error'),
                  ),
              loading: (_) => customCircularProgress(),
              data: (_data) {
                return Scaffold(
                  appBar: _CustomAppBar(
                    category: _data.category,
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
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ArticleDetail(
                            idArticle: articles![index].id,
                          )),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 320,
                    height: 156,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                articles![index].images!.first.url!),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: 320,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            articles![index].title!,
                            overflow: TextOverflow.fade,
                            softWrap: false,
                            style: TextThemes.cardTitle,
                          ),
                        ),
                        new IconButton(
                          padding: new EdgeInsets.all(0.0),
                          color: ColorPalette.blue,
                          icon: new Icon(Icons.chevron_right_sharp, size: 25.0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArticleDetail(
                                        idArticle: articles![index].id,
                                      )),
                            );
                          },
                        )
                        // IconButton(icon: Icon(), onPressed: () {})
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Category>? category;
  const _CustomAppBar({
    Key? key,
    required this.category,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.news,
                  style: TextThemes.appBarTitle,
                ),
                PopupMenuButton(
                    onSelected: (String value) {
                      provider.setLocale(value);
                      context.read<NewsBloc>()
                        ..add(NewsEvent.initial(
                            locale: provider.getLocaleCode()));
                    },
                    child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/img/lang.png')))),
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text("KG"),
                            value: 'KG',
                          ),
                          PopupMenuItem(
                            child: Text("RU"),
                            value: 'RU',
                          )
                        ])
                // _LangPopUpMenu(),
                // _LanguagePickerWidget(),
                // InkWell(
                //   onTap: () {_LangPopUpMenu();},
                // child: Container(
                //   width: 24,
                //   height: 24,
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //           image: AssetImage('assets/img/lang.png'))),
                //   ),
                // )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
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
                            primary: !category![index].active
                                ? ColorPalette.gray
                                : ColorPalette.white,
                            backgroundColor: !category![index].active
                                ? ColorPalette.unselectBottom
                                : ColorPalette.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          onPressed: () {
                            context.read<NewsBloc>().add(
                                NewsEvent.selectCategory(
                                    id: category![index].id));
                          },
                          child: Text(category![index].name.toString())),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120);
}

// class _LanguagePickerWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<LocaleProvider>(context);
//     final List<String> _dropDownValue = ['KG', 'RU'];
//     // final locale = provider.locale ?? Locale('en');

//     return DropdownButtonHideUnderline(
//       child: DropdownButton(
//         value: _dropDownValue.first,
//         icon: Container(width: 12),
//         items: _dropDownValue.map(
//           (locale) {
//             return DropdownMenuItem(
//               child: Center(
//                 child: Text(
//                   locale,
//                   style: TextStyle(fontSize: 32),
//                 ),
//               ),
//               value: locale,
//               onTap: () {
//                 final provider =
//                     Provider.of<LocaleProvider>(context, listen: false);

//                 // provider.setLocale(locale);
//               },
//             );
//           },
//         ).toList(),
//         onChanged: (_) {},
//       ),
//     );
//   }
// }

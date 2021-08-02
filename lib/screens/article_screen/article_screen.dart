import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:value_listanable_example/data/server_api/models/models/output_images.dart';
import 'package:value_listanable_example/screens/article_screen/article_bloc/article_bloc.dart';
import 'package:value_listanable_example/theme/color_theme.dart';
import 'package:value_listanable_example/theme/text_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ArticleDetail extends StatelessWidget {
  final int idArticle;
  const ArticleDetail({Key? key, required this.idArticle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: ColorPalette.blackButton,
          padding: new EdgeInsets.all(0.0),
          icon: new Icon(Icons.arrow_back, size: 18.0),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
          child: _Body(
        idArticle: idArticle,
      )),
    );
  }
}

class _Body extends StatelessWidget {
  final int idArticle;
  const _Body({Key? key, required this.idArticle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArticleBloc>(
        create: (BuildContext context) =>
            ArticleBloc()..add(ArticleEvent.initial(idArticle: idArticle)),
        child:
            BlocConsumer<ArticleBloc, ArticleState>(listener: (context, state) {
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
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_data.article.headerTitle.toString(),
                          style: TextThemes.headerTitle),
                      Text(
                        '${AppLocalizations.of(context)!.data} ${DateFormat('dd.MM.yyyy').format(_data.article.addDate)}',
                        style: TextThemes.date,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Container(
                          width: double.infinity,
                          height: 183,
                          child: _ImageSlider(
                            images: _data.article.images!,
                          )),
                          const SizedBox(height: 13,),
                      Text(_data.article.text!, style: TextThemes.contentText,),
                    ],
                  ),
                );
              });
        }));
  }
}

class _ImageSlider extends StatelessWidget {
  final List<Images> images;
  const _ImageSlider({Key? key, required this.images}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        autoPlay: false,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
      items: images
          .map((item) => Container(
                child: Center(
                    child: Image.network(item.url!,
                        fit: BoxFit.cover, width: 1000)),
              ))
          .toList(),
    ));
  }
}

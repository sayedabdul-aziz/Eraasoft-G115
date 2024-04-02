import 'package:insights_news_3_21/features/home/model/news_model/news_model.dart';

class NewsStates {}

class NewsInitialState extends NewsStates {}

class NewsByCategoryLoadingState extends NewsStates {}

class NewsByCategorySuccessState extends NewsStates {
  final NewsModel model;
  NewsByCategorySuccessState(this.model);
}

class NewsByCategoryErrorState extends NewsStates {
  final String error;

  NewsByCategoryErrorState(this.error);
}

// search
class NewsBySearchLoadingState extends NewsStates {}

class NewsBySearchSuccessState extends NewsStates {
  final NewsModel model;
  NewsBySearchSuccessState(this.model);
}

class NewsBySearchErrorState extends NewsStates {
  final String error;

  NewsBySearchErrorState(this.error);
}

// get source
class NewsBySourceLoadingState extends NewsStates {}

class NewsBySourceSuccessState extends NewsStates {
  final NewsModel model;
  NewsBySourceSuccessState(this.model);
}

class NewsBySourceErrorState extends NewsStates {
  final String error;

  NewsBySourceErrorState(this.error);
}

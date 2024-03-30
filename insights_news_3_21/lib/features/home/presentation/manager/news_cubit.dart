import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insights_news_3_21/core/services/api_services.dart';
import 'package:insights_news_3_21/features/home/presentation/manager/news_state.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());

  // get by category

  getNewsByCategory(String category) {
    emit(NewsByCategoryLoadingState());
    try {
      ApiServices.getNewsByCategory(category).then((value) {
        emit(NewsByCategorySuccessState(value!));
      });
    } catch (e) {
      emit(NewsByCategoryErrorState(e.toString()));
    }
  }

  getNewsBySource(String source) {
    emit(NewsByCategoryLoadingState());
    try {
      ApiServices.getNewsBySource(source).then((value) {
        emit(NewsByCategorySuccessState(value!));
      });
    } catch (e) {
      emit(NewsByCategoryErrorState(e.toString()));
    }
  }
}

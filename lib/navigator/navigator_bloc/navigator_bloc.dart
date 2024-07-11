import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/source/local/basket_hive.dart';

part 'navigator_event.dart';

part 'navigator_state.dart';

class NavigatorBloc extends Bloc<NavigatorEvent, NavState> {
  NavigatorBloc()
      : super(NavState(bottomNavigationIndex: 0, notificationCount: BasketHive().getAllFromBasket().length)) {
    on<NavigatorEvent>((event, emit) {
     try{
       on<ChangingIndex>((event, emit) => changeBottomNavigation(event, emit));
       print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXAA${BasketHive().getAllFromBasket().length}");
       on<LoadNavigateEvent>((event, emit) => loadAllBasketData(event, emit));
     }catch(e){
       print("MEHRIIIIII  ${e.toString()}");
     }
    });
  }



  changeBottomNavigation(ChangingIndex event, Emitter<NavState> emit) {
    emit(state.copyWith(
        notificationCount: BasketHive().getAllFromBasket().length));
print("BOTTOM EVEEEEENT");
    emit(state.copyWith(bottomNavigationIndex: event.index));
  }
  loadAllBasketData(LoadNavigateEvent event, Emitter<NavState> emit) {
    final list = BasketHive().getAllFromBasket();
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX${BasketHive().getAllFromBasket().length}");
    emit(state.copyWith(notificationCount: list.length));
  }
}

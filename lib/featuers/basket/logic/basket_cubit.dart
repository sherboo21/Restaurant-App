import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task/featuers/basket/data/repos/basket_repos.dart';

part 'basket_state.dart';

class BasketCubit extends Cubit<BasketState> {
  final BasketRepository _basketRepository;

  BasketCubit(this._basketRepository) : super(BasketInitial());
}

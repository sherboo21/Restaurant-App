import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/helpers/app_imgs.dart';
import 'package:task/core/helpers/app_strings.dart';
import 'package:task/featuers/home/data/model/home.dart';
import 'package:task/featuers/home/data/repos/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepo;

  HomeCubit(this._homeRepo) : super(HomeInitial());

  final List<HomeModel> dishesList = [
    HomeModel(
      title: AppStrings.noodles,
      img: AppImages.noodlesImage,
    ),
    HomeModel(
      title: AppStrings.chicken,
      img: AppImages.chickenImage,
    ),
    HomeModel(
      title: AppStrings.pasta,
      img: AppImages.pastaImage,
    ),
    HomeModel(
      title: AppStrings.sushi,
      img: AppImages.sushiImage,
    ),
    HomeModel(
      title: AppStrings.salad,
      img: AppImages.saladImage,
    )
  ];
  final List<HomeModel> quickBrowseList = [
    HomeModel(
      title: AppStrings.foodOffers,
      img: AppImages.offerImage,
    ),
    HomeModel(
      title: AppStrings.topRated,
      img: AppImages.rateImage,
    ),
    HomeModel(
      title: AppStrings.liveTracking,
      img: AppImages.locationImage,
    ),
  ];
}

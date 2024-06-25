import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_text_form_field.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/customer/search/data/model/search_request_body.dart';
import 'package:store_app/features/customer/search/presentation/bloc/search/search_bloc.dart';
import 'package:store_app/features/customer/search/presentation/bloc/search/search_event.dart';
import 'package:store_app/features/customer/search/presentation/widgets/save_filter_button.dart';
import 'package:store_app/features/customer/search/presentation/widgets/search_for_data.dart';
import 'package:store_app/features/customer/search/presentation/widgets/search_name_and_price_button.dart';

import '../../../../../core/enums/filter_button_enum.dart';

class FilterButtons extends StatefulWidget {
  const FilterButtons({super.key});

  @override
  State<FilterButtons> createState() => _FilterButtonsState();
}

class _FilterButtonsState extends State<FilterButtons> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _minPriceController = TextEditingController();
  final TextEditingController _maxPriceController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FilterButtonEnum searchButton = FilterButtonEnum.none;
  @override
  void dispose() {
    _nameController.dispose();
    _minPriceController.dispose();
    _maxPriceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Filter Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomFadeInRight(
                duration: 200,
                child: SearchNameAndPriceButton(
                  title: 'Search Name',
                  isSelected: searchButton == FilterButtonEnum.name,
                  onPressed: _searchName,
                ),
              ),
              CustomFadeInLeft(
                duration: 200,
                child: SearchNameAndPriceButton(
                  title: 'Search Price',
                  isSelected: searchButton == FilterButtonEnum.price,
                  onPressed: _searchPrice,
                ),
              ),
            ],
          ),
          verticalSpace(20),
          if (searchButton == FilterButtonEnum.name) ...[
            CustomFadeInDown(
                duration: 200,
                child: AppTextFormFiled(
                  controller: _nameController,
                  hintText: 'Search For Product Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Product Name';
                    }
                    return null;
                  },
                )),
            SaveFilterButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context.read<SearchBloc>().add(SearchEvent.searchProduct(
                        body: SearchRequestBody(
                          productMin: null,
                          productMax: null,
                          productName: _nameController.text.trim(),
                        ),
                      ));
                  _nameController.clear();
                  setState(() {
                    searchButton = FilterButtonEnum.saved;
                  });
                }
              },
            )
          ] else if (searchButton == FilterButtonEnum.price) ...[
            Row(
              children: [
                Expanded(
                  child: CustomFadeInDown(
                      duration: 200,
                      child: AppTextFormFiled(
                        controller: _minPriceController,
                        hintText: 'Product Min Price',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Product Min Price';
                          }
                          return null;
                        },
                      )),
                ),
                horizontalSpace(10),
                Expanded(
                  child: CustomFadeInDown(
                      duration: 200,
                      child: AppTextFormFiled(
                        controller: _maxPriceController,
                        hintText: 'Product Max Price',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Product Max Price';
                          }
                          return null;
                        },
                      )),
                ),
              ],
            ),
            SaveFilterButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context.read<SearchBloc>().add(
                        SearchEvent.searchProduct(
                          body: SearchRequestBody(
                              productMin: int.parse(_minPriceController.text),
                              productMax: int.parse(_maxPriceController.text),
                              productName: null),
                        ),
                      );
                  _minPriceController.clear();
                  _maxPriceController.clear();
                  setState(() {
                    searchButton = FilterButtonEnum.saved;
                  });
                }
              },
            )
          ],
          if (searchButton == FilterButtonEnum.none) const SearchForData(),
        ],
      ),
    );
  }

  void _searchPrice() {
    if (searchButton == FilterButtonEnum.price) {
      setState(() {
        searchButton = FilterButtonEnum.saved;
      });
    } else {
      setState(() {
        searchButton = FilterButtonEnum.price;
      });
    }
  }

  void _searchName() {
    if (searchButton == FilterButtonEnum.name) {
      setState(() {
        searchButton = FilterButtonEnum.saved;
      });
    } else {
      setState(() {
        searchButton = FilterButtonEnum.name;
      });
    }
  }
}

import 'package:flutter/material.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_text_form_field.dart';
import 'package:store_app/core/helper/spacing.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FilterButtonEnum searchButton = FilterButtonEnum.none;
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
                  controller: TextEditingController(),
                  hintText: 'Search For Product Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Product Name';
                    }
                    return null;
                  },
                )),
            SaveFilterButton(
              onPressed: () {},
            )
          ] else if (searchButton == FilterButtonEnum.price) ...[
            Row(
              children: [
                Expanded(
                  child: CustomFadeInDown(
                      duration: 200,
                      child: AppTextFormFiled(
                        controller: TextEditingController(),
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
                        controller: TextEditingController(),
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
              onPressed: () {},
            )
          ],
          if(searchButton == FilterButtonEnum.none) 
          const SearchForData(),
           
        ],
      ),
    );
  }

  void _searchPrice() {
    if (searchButton == FilterButtonEnum.price) {
      setState(() {
        searchButton = FilterButtonEnum.none;
        // call api
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
        searchButton = FilterButtonEnum.none;
        // call api
      });
    } else {
      setState(() {
        searchButton = FilterButtonEnum.name;
      });
    }
  }
}

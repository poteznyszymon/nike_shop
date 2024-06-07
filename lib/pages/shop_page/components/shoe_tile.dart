import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_shop/models/shoe_model.dart';
import '../../cart_page/bloc/cart_bloc.dart';

class ShoeTile extends StatefulWidget {
  final Shoe shoe;
  const ShoeTile({
    super.key,
    required this.shoe,
  });

  @override
  State<ShoeTile> createState() => _ShoeTileState();
}

class _ShoeTileState extends State<ShoeTile> {
  late AnimateIconController animationController;

  @override
  void initState() {
    animationController = AnimateIconController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(12),
      ),
      width: (MediaQuery.of(context).size.width / 2) - 30,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Image.asset(
                  widget.shoe.imageUrl,
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.shoe.category
                            .toString()
                            .substring(11)
                            .toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                              color: Theme.of(context).colorScheme.background,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        widget.shoe.model,
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 14,
                                  color: Theme.of(context).colorScheme.surface,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      Text(
                        '\$${widget.shoe.price.toString()}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(1, 1),
            child: GestureDetector(
              onTap: () {
                context.read<CartBloc>().add(ShoeAdd(shoe: widget.shoe));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.1,
                child: Center(
                  child: AnimateIcons(
                      duration: Duration(milliseconds: 400),
                      startIconColor:
                          Theme.of(context).colorScheme.onBackground,
                      endIconColor: Theme.of(context).colorScheme.onBackground,
                      startIcon: Icons.add,
                      endIcon: Icons.done,
                      onStartIconPress: () {
                        context
                            .read<CartBloc>()
                            .add(ShoeAdd(shoe: widget.shoe));
                        return true;
                      },
                      onEndIconPress: () {
                        return true;
                      },
                      controller: animationController),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

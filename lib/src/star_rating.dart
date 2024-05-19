import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final double rating;
  final Color? starColor;
  final double size;
  final MainAxisAlignment mainAxisAlignment;
  final bool isReadOnly;
  final IconData filledStar;
  final IconData unfilledStar;
  final IconData halfStar;
  final Function(double value)? onRatingChanged;

  const StarRating({
    Key? key,
    this.rating = 4.0,
    this.starColor,
    this.size = 30.0,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.isReadOnly = false,
    this.filledStar = Icons.star,
    this.unfilledStar = Icons.star_border,
    this.halfStar = Icons.star_half,
    this.onRatingChanged,
  }) : super(key: key);

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  late double _currentRating;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.rating;
  }

  void _onStarTap(double rating) {
    if (!widget.isReadOnly) {
      setState(() {
        _currentRating = rating;
      });
      widget.onRatingChanged?.call(rating);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: widget.mainAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        double starValue = index + 1.0;
        IconData starIcon;
        if (_currentRating >= starValue) {
          starIcon = widget.filledStar;
        } else if (_currentRating >= starValue - 0.5) {
          starIcon = widget.halfStar;
        } else {
          starIcon = widget.unfilledStar;
        }

        return GestureDetector(
          onTap: () => _onStarTap(starValue - 0.5 + (index < _currentRating ? 1 : 0)),
          child: Icon(
            starIcon,
            color: widget.starColor ?? Theme.of(context).primaryColor,
            size: widget.size,
          ),
        );
      }),
    );
  }
}

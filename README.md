# StarRating

A customizable star rating widget for Flutter.

## Features

- Customizable number of stars
- Adjustable star size and color
- Fractional star ratings (half-star support)
- Custom star icons
- Read-only mode
- Smooth transitions and animations
- Accessibility support

## Installation

To use this package, add `star_rating` as a dependency in your `pubspec.yaml` file.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

### Import the package

```dart
import 'package:star_rating/custom_star_rating.dart';
```


## Example

Here's a simple example to get you started:


```dart
import 'package:flutter/material.dart';
import 'package:star_rating/custom_star_rating.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Star Rating Example'),
        ),
        body: Center(
          child: StarRating(
            rating: 3,
            starColor: Colors.amber,
            size: 40.0,
            mainAxisAlignment: MainAxisAlignment.center,
            onTap: (rating) {
              print("Selected Rating: $rating");
            },
          ),
        ),
      ),
    );
  }
}

```



## Customizing the Star Rating Widget

You can customize various properties of the StarRating widget:

- rating: The initial rating value (default is 4.0).
- starColor: The color of the stars (default is the theme's primary color).
- size: The size of the stars (default is 30.0).
- mainAxisAlignment: The alignment of the stars in the row (default is MainAxisAlignment.start).
- isReadOnly: Whether the rating is read-only (default is false).
- filledStar: The icon for filled stars (default is Icons.star).
- unfilledStar: The icon for unfilled stars (default is Icons.star_border).
- halfStar: The icon for half stars (default is Icons.star_half).
- onRatingChanged: Callback function when a star is tapped.

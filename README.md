<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A simple pulgin to create dropdown textfield.

## Features

It helps to create dropdown textfield;

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## How to use.

dynamic selected_value;

 SimpleDropdown(
    hintText:Text('hello',style: Theme.of(context).textTheme.headline3?.copyWith(),),
    options: [a,b,c]
    value: selected_value,
    onChanged: (value){
    setState(() {
        selected_value = value;
    });
    },
    getLabel: (value){
    return value.toString();
    },
),


## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.

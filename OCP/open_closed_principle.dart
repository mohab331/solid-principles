// Let's assume we have a class named Shape that can calculate the area of different shapes.
// The problem is, whenever we want to add support for a new shape, we have to modify the Shape class itself.
// This is a violation of the Open/Closed Principle (OCP) because adding a new shape will affect existing shape calculations,
// and we'll have to keep adding if/else statements, making the class harder to manage.

class Shape {
  double calculateArea(String shape) {
    // Calculation for various shapes.
    if (shape == 'circle') {
      // Do something for circle.
    } else if (shape == 'rectangle') {
      // Do something for rectangle.
    } else if (shape == 'square') {
      // Do something for square.
    }
    // ... and so on.
    return 0.0;
  }
}

// To follow the OCP, we should create an abstract class called ShapeAbstract and then create separate classes for each specific shape,
// extending the ShapeAbstract class.

abstract class ShapeAbstract {
  double calculateArea();
}

class Rectangle extends ShapeAbstract {
  @override
  double calculateArea() {
    // Calculation for Rectangle.
    return 0.0;
  }
}

class Circle extends ShapeAbstract {
  @override
  double calculateArea() {
    // Calculation for Circle.
    return 0.0;
  }
}

// Now, we have improved our code! We no longer modify the base code when adding new shapes,
// and we don't have to deal with too many if statements. Each shape has its own class with a specific area calculation,
// and we can easily extend the program to support new shapes without affecting existing ones. This adheres to the Open/Closed Principle,
// making our code more maintainable and flexible.
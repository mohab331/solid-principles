abstract class Shape{
  void draw();
}

class Circle implements Shape{
  draw(){
    // draw circle
  }
}
class Square implements Shape {
  draw() {
    // draw square
  }
}
  class Triangle implements Shape{
    draw(){
      // draw triangle
  }
  }
/// here if we added any class and made it implements interface will work without modifying in the method

  class Drawer{
    static void drawShapes(List<Shape> shapes){
      for(final shape in shapes){
        shape.draw();
      }
    }
  }

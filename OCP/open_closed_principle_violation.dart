class Circle{}
class Square{}


/// this class violates ocp as if we added another shape class then we need
/// to modify in function drawShapes and added extra condition
class Drawer{
  static void drawShapes(List<object> shapes){
    for(final shape in shapes){
      if(shape is Circle){

      }
    }
  }
  void drawCircle(Circle circle){
    /// draw circle
  }

  void drawSquare(Square square){
    /// draw square
  }
}


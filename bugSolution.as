function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  // Use getRect() to account for transformations
  var rect1:Rectangle = obj1.getRect(obj1.parent);
  var rect2:Rectangle = obj2.getRect(obj2.parent);

  // Check if the rectangles intersect
  return rect1.intersects(rect2);
}

//Helper function to handle null parents
function getRect(obj:DisplayObject, parent:DisplayObjectContainer = null):Rectangle {
  if(parent == null){
    return obj.getBounds(obj);
  }
  return obj.getRect(parent);
}
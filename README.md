# ActionScript 3 Collision Detection Bug

This repository demonstrates a common issue in ActionScript 3 when using the `getBounds()` method for collision detection with rotated or scaled objects.  The `getBounds()` method, without considering the parent's transformation, returns incorrect bounding boxes leading to inaccurate collision detection.

The `bug.as` file contains the flawed collision detection code.  `bugSolution.as` provides a corrected version using `getRect()` for accurate collision detection in all cases.

## Problem

The `getBounds()` method in ActionScript 3 returns the bounding rectangle of a display object in its *local* coordinate space. This means that if the object is rotated or scaled, `getBounds()` will not reflect the transformed bounding box in the parent's coordinate system, resulting in incorrect collision detection.

## Solution

The corrected version uses a more robust approach to handle object transformations, providing accurate collision detection results even when objects are rotated or scaled.
public void keyPressed() {
  if (key == 'c' || key == 'C') {
    if (leap.isEnabled(Type.TYPE_CIRCLE)) {
      leap.disableGesture(Type.TYPE_CIRCLE);
      lastGesture = "Circle Gesture disabled.";
    } else {
      leap.enableGesture(Type.TYPE_CIRCLE);
      lastGesture = "Circle Gesture enabled.";
    }
  }

  if (key == 's' || key == 'S') {
    if (leap.isEnabled(Type.TYPE_SWIPE)) {
      leap.disableGesture(Type.TYPE_SWIPE);
      lastGesture = "Swipe Gesture disabled.";
    } else {
      leap.enableGesture(Type.TYPE_SWIPE);
      lastGesture = "Swipe Gesture enabled.";
    }
  }

  if (key == 'k' || key == 'K') {
    if (leap.isEnabled(Type.TYPE_KEY_TAP)) {
      leap.disableGesture(Type.TYPE_KEY_TAP);
      lastGesture = "KeyTap Gesture disabled.";
    } else {
      leap.enableGesture(Type.TYPE_KEY_TAP);
      lastGesture = "KeyTap Gesture enabled.";
    }
  }

  if (key == 't' || key == 'T') {
    if (leap.isEnabled(Type.TYPE_SCREEN_TAP)) {
      leap.disableGesture(Type.TYPE_SCREEN_TAP);
      lastGesture = "ScreenTap Gesture disabled. ";
    } else {
      leap.enableGesture(Type.TYPE_SCREEN_TAP);
      lastGesture = "ScreenTap Gesture enabled. ";
    }
  }
}

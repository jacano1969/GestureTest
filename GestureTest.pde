import com.leapmotion.leap.CircleGesture;
import com.leapmotion.leap.Gesture.State;
import com.leapmotion.leap.Gesture.Type;
import com.leapmotion.leap.Hand;
import com.leapmotion.leap.KeyTapGesture;
import com.leapmotion.leap.ScreenTapGesture;
import com.leapmotion.leap.SwipeGesture;
import com.onformative.leap.LeapMotionP5;

String lastGesture = "";
LeapMotionP5 leap;
color fgColor = color(255);

void setup() {
  size(500, 500);
  textSize(17);

  leap = new LeapMotionP5(this);
  background(0);
}

void draw() {
  noStroke();
  fill(0,20);
  rect(0,0,width,height);
  for (Hand hand : leap.getHandList()) {
    PVector handPos = leap.getPosition(hand);
    fill(fgColor);
    ellipse(handPos.x, handPos.y, 20, 20);
  }
  fill(255);
  textAlign(CORNER);
  text(
    "Circle: " + setOnOff(leap.isEnabled(Type.TYPE_CIRCLE)) + 
    "   |   Swipe: " + setOnOff(leap.isEnabled(Type.TYPE_SWIPE)) + 
    "   |   Keytap: " + setOnOff(leap.isEnabled(Type.TYPE_KEY_TAP)) + 
    "   |   Tap: " + setOnOff(leap.isEnabled(Type.TYPE_SCREEN_TAP)),
    30,30);
  fill(fgColor);
  text(lastGesture,30,60);
}

//1. CIRCLE
void circleGestureRecognized(CircleGesture gesture, String clockwiseness) {
  fgColor = color(255,0,0);
  if (gesture.state() == State.STATE_STOP) {
    System.out.println("//////////////////////////////////////");
    System.out.println("Gesture type: " + gesture.type().toString());
    System.out.println("ID: " + gesture.id());
    System.out.println("Radius: " + gesture.radius());
    System.out.println("Normal: " + gesture.normal());
    System.out.println("Clockwiseness: " + clockwiseness);
    System.out.println("Turns: " + gesture.progress());
    System.out.println("Center: " + leap.convertVectorToPVector(gesture.center()));
    System.out.println("Duration: " + gesture.durationSeconds() + "s");
    System.out.println("//////////////////////////////////////");
    lastGesture = "Gesture type: " + gesture.type().toString() + "\n";
    lastGesture += "ID: " + gesture.id() + "\n";
    lastGesture += "Radius: " + gesture.radius() + "\n";
    lastGesture += "Normal: " + gesture.normal() + "\n";
    lastGesture += "Clockwiseness: " + clockwiseness + "\n";
    lastGesture += "Turns: " + gesture.progress() + "\n";
    lastGesture += "Center: " + leap.convertVectorToPVector(gesture.center()) + "\n";
    lastGesture += "Duration: " + gesture.durationSeconds() + "s" + "\n";
  } 
  else if (gesture.state() == State.STATE_START) {
  } 
  else if (gesture.state() == State.STATE_UPDATE) {
  }
}

//2. SWIPE
void swipeGestureRecognized(SwipeGesture gesture) {
  fgColor = color(0,255,0);
  if (gesture.state() == State.STATE_STOP) {
    System.out.println("//////////////////////////////////////");
    System.out.println("Gesture type: " + gesture.type());
    System.out.println("ID: " + gesture.id());
    System.out.println("Position: " + leap.convertVectorToPVector(gesture.position()));
    System.out.println("Direction: " + gesture.direction());
    System.out.println("Duration: " + gesture.durationSeconds() + "s");
    System.out.println("Speed: " + gesture.speed());
    System.out.println("//////////////////////////////////////");
    lastGesture = "Gesture type: " + gesture.type().toString() + "\n";
    lastGesture += "ID: " + gesture.id() + "\n";
    lastGesture += "Position: " + leap.convertVectorToPVector(gesture.position()) + "\n";
    lastGesture += "Direction: " + gesture.direction() + "\n";
    lastGesture += "Speed: " + gesture.speed() + "\n";
    lastGesture += "Duration: " + gesture.durationSeconds() + "s" + "\n";
  } 
  else if (gesture.state() == State.STATE_START) {
  } 
  else if (gesture.state() == State.STATE_UPDATE) {
  }
}

//3.  SCREEN TAP  
void screenTapGestureRecognized(ScreenTapGesture gesture) {
  fgColor = color(0,0,255);
  if (gesture.state() == State.STATE_STOP) {
    System.out.println("//////////////////////////////////////");
    System.out.println("Gesture type: " + gesture.type());
    System.out.println("ID: " + gesture.id());
    System.out.println("Position: " + leap.convertVectorToPVector(gesture.position()));
    System.out.println("Direction: " + gesture.direction());
    System.out.println("Duration: " + gesture.durationSeconds() + "s");
    System.out.println("//////////////////////////////////////");
    lastGesture = "Gesture type: " + gesture.type().toString() + "\n";
    lastGesture += "ID: " + gesture.id() + "\n";
    lastGesture += "Position: " + leap.convertVectorToPVector(gesture.position()) + "\n";
    lastGesture += "Direction: " + gesture.direction() + "\n";
    lastGesture += "Duration: " + gesture.durationSeconds() + "s" + "\n";
  } 
  else if (gesture.state() == State.STATE_START) {
  } 
  else if (gesture.state() == State.STATE_UPDATE) {
  }
}

//4. KEY TAP
void KeyTapGestureRecognized(KeyTapGesture gesture) {
  fgColor = color(255,255,0);
  if (gesture.state() == State.STATE_STOP) {
    System.out.println("//////////////////////////////////////");
    System.out.println("Gesture type: " + gesture.type());
    System.out.println("ID: " + gesture.id());
    System.out.println("Position: " + leap.convertVectorToPVector(gesture.position()));
    System.out.println("Direction: " + gesture.direction());
    System.out.println("Duration: " + gesture.durationSeconds() + "s");
    System.out.println("//////////////////////////////////////");
    lastGesture = "Gesture type: " + gesture.type().toString() + "\n";
    lastGesture += "ID: " + gesture.id() + "\n";
    lastGesture += "Position: " + leap.convertVectorToPVector(gesture.position()) + "\n";
    lastGesture += "Direction: " + gesture.direction() + "\n";
    lastGesture += "Duration: " + gesture.durationSeconds() + "s" + "\n";
  } 
  else if (gesture.state() == State.STATE_START) {
  } 
  else if (gesture.state() == State.STATE_UPDATE) {
  }
}

void stop() {
  leap.stop();
}

String setOnOff(boolean _b){
  String s;
  if(_b){
    s = "ON";
  }else{
    s = "OFF";
  }
  return s;
}

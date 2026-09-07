// week01_5_google_gemini_mouse_wheel_void_mouseWheel_MouseEvent_getCount
// google gemini:Processing怎麼用到mouse wheel
float circleSize = 100; // 初始圓形大小

void setup() {
  size(600, 600);
}

void draw() {
  background(220);
  
  // 繪製圓形
  fill(50, 150, 250);
  noStroke();
  ellipse(width/2, height/2, circleSize, circleSize);
}

// 偵測滑鼠滾輪的內建函式
void mouseWheel(MouseEvent event) {
  float e = event.getCount(); // 取得滾輪捲動方向與數值
  
  // 如果向下捲 (e > 0)，圓形變大；向上捲 (e < 0)，圓形變小
  circleSize += e * 5; 
  
  // 限制圓形大小，避免變成負數或太大
  circleSize = constrain(circleSize, 10, 500); 
}

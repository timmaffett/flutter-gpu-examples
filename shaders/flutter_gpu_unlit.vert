// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
uniform FrameInfo {
  mat4 mvp;
  vec4 color;
}
frame_info;

in vec2 position;
out vec4 v_color;

void main() {
  v_color = frame_info.color;
  gl_Position = frame_info.mvp * vec4(position, 0.0, 1.0);
}

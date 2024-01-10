# kobuki_ws
ros2-foxy-にて動作確認済み

## install
mkdir -p ~/kobuki_ws/src

git clone https://github.com/kuri-tadaoki/kobuki_ws.git

cd kobuki_ws/

colcon build --symlink-install

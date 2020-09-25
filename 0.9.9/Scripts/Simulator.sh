xrandr --output HDMI-0 --auto --mode 1920x1080 --pos 0x0 --rotate normal --primary
xrandr --output DP-1 --auto --mode 1920x1080 --pos 5760x0 --rotate normal
xrandr --output DP-5 --auto --mode 1920x1080 --pos 1920x0 --rotate normal
xrandr --output DP-3 --auto --mode 1920x1080 --pos 3840x0 --rotate normal

python manual_control_simulator.py --refresh=20 & 
python AdditionalDisplay_Left.py --sleep=10 --refresh=20 &
python AdditionalDisplay_Right.py --sleep=10 --refresh=20 &
python AdditionalDisplay_Rear.py --sleep=10 --refresh=20

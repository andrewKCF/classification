cd ~/Desktop/classification
sudo su -c 'echo 255 > /sys/devices/pwm-fan/target_pwm'
sudo systemctl disable nvzramconfig
sudo fallocate -l 4G /mnt/4GB.swap
sudo mkswap /mnt/4GB.swap
sudo swapon /mnt/4GB.swap
python3 train.py --model-dir=models/my_sign data/my_sign
python3 onnx_export.py --model-dir=models/my_sign

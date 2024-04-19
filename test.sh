NET=~/Desktop/classification/models/my_sign
DATASET=~/Desktop/classification/data/my_sign
imagenet.py --model=$NET/resnet18.onnx --input_blob=input_0 --output_blob=output_0 --labels=$DATASET/labels.txt /dev/video0 -input-width=640 -input-height=360 -input-flip=horizontal

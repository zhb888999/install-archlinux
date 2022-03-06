#!/bin/bash

while true
do
    # 随机选择文件夹下的一张图片作为壁纸 
    feh --recursive --randomize --bg-fill ~/Pictures/wallpapers
    # 休息三分钟
    sleep 3m
done

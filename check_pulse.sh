#!/bin/bash

# Lấy giá trị từ pactl
sink=$(pactl list sinks short | grep 'DAC' | awk '{print $2}')

# Kiểm tra xem sink có giá trị rỗng hay không
if [ -z "$sink" ]; then
    # Nếu giá trị rỗng, khởi động lại pulseaudio
    sudo systemctl restart pulseaudio.service
fi

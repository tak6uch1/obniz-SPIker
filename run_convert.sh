#!/bin/sh
# 1. Record using VoiceMemos(Mac) as *.mp4
#    The sound files are saved under ~/Library/Application\ Support/com.apple.voicememos/Recordings/
# 2. Convert sound files into WAV with following commands.
#    If you do not have ffmpeg, install ffmpeg with below. (Mac)
#      brew install ffmpeg

ffmpeg -i 20210613\ 090601.m4a -ac 1 -ar 44100 hello.wav

ffmpeg -i 20210613\ 090601.m4a -ac 1 -ar 44100 -af lowpass=4000,highpass=400 hello_filter.wav


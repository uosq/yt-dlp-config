#!/bin/zsh
touch download-video

otexto='#!/bin/zsh
if [[ $1 == 'br' ]]; then
    yt-dlp --embed-subs --sub-lang "pt.*" -o "%(title)s.%(ext)s" $2
elif [[ $1 == 'en' ]]; then
    yt-dlp --embed-subs --sub-lang "en.*" -o "%(title)s.%(ext)s" $2
elif [[ $1 == 'normal' ]]; then
    yt-dlp -o "%(title)s.%(ext)s" $2
fi'

echo "$otexto" > download-video
chmod +x download-video
echo "alias yt='bash ~/download-video'" >> ~/.zshrc

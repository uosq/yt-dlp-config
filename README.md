Assim, é feito pra mim então pra vc pode ser diferente o jeito que faz as coisas

```bash
#!/bin/bash
touch download-video

otexto='#!/bin/bash
if [[ $1 == 'br' ]]; then
    yt-dlp --write-subs --sub-lang "pt.*" -o "%(title)s.%(ext)s" $2
elif [[ $1 == 'en' ]]; then
    yt-dlp --write-subs --sub-lang "en.*" -o "%(title)s.%(ext)s" $2
elif [[ $1 == 'normal' ]]; then
    yt-dlp -o "%(title)s.%(ext)s" $2
fi'

echo "$otexto" > download-video
chmod +x download-video
echo "alias yt='bash ~/download-video'" >> ~/.bashrc
```

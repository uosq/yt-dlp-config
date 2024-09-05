local str = "yt-dlp --merge-output-format mkv -o '%(title)s.%(ext)s'"

if arg[1] ~= 'br' or arg[1] ~= 'en' then
	str = str .. " " .. tostring(arg[1])
	elseif arg[1] == 'br' then
	str = str .. " " .. '--embed-subs --sub-lang "pt.*"' .. " " .. tostring(arg[2])
	elseif arg[1] == 'en' then
	str = str .. " " .. '--embed-subs --sub-lang "en.*"' .. " " .. tostring(arg[2])
end

os.execute(tostring(str))

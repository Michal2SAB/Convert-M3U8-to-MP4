# Convert M3U8 to MP4
Very simple batch and bash scripts for both windows and linux. You can convert M3U8 stream playlist to a playable MP4 video. You can also basically download any stream-only video off a lot of websites. Useful if the website doesn't have a download option for the video you want.

# Requirements
You need to install FFmpeg properly (with adding to the PATH) or do it the noob way (download ffmpeg.exe and put inside your folder)

- FFmpeg link: https://ffmpeg.org/download.html

- Fiddler link (optional, see below): https://www.telerik.com/fiddler

# How to get M3U8 file from online video
You got two options:

- Run fiddler in background **before** you start watching your video and catch the .m3u8 url in traffic after you press play on the video (make sure 'capture traffic' is enabled).

- Open browser console **before** you start watching your video, go to the network tab and catch the M3U8 url when you press play on your video. It's easier with fiddler imo.

# batch-yt-4k-convert-and-upload
Batch script to automatically upscale and upload to YouTube many videos.
___
### Why?
To dump lots of awesome video game footage to YouTube while upscaling it to 4K to get the highest quality!
___
### Hundreds of hours of unlisted 4K footage! Will YouTube get mad?
🤷
___
### Features
* Nearest neighbour scaling. (seems to look the best from a 1080p upscale)
* NVIDIA decoding and encoding for faster transcoding (means this script requires an nvidia gpu)
* Moves footage into completed folder when done.
___
### How to use?
1. Download start.bat and place it where the footage is.
2. Create a bin folder where the footage is.
3. Download and extract ffmpeg.exe into the bin folder
4. Download [porjo's youtubeuploader](https://github.com/porjo/youtubeuploader) into the bin folder.
5. Follow [youtubeuploader's setup](https://github.com/porjo/youtubeuploader#setup)
6. Start!
___
### Does it work?
Not really, looks like YouTube API's limit is only 6 uploads per day. Not enough! :(

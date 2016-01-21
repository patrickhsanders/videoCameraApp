##UI
###Recording screen
- capture, stop button
- slow motion, regular recording

###Playback screen
- play, stop button
- progress bar (uistatus bar maybe) -- OPTIONAL
- rewind button, fastforward button -- OPTIONAL
- back XXseconds button --OPTIONAL

###Browse screen 
- collection view with headers
- shows the video preview image
- shows the video preview image (animated) -- OPTIONAL


##Model 
###User
- random hashed value in keychain, synchronized with iCloud.

###Cloud service (OPTIONAL)
- which (Google Drive, ftp, etc)
- login credentials (if needed)

###Files
store in /Documents/YYYY-MM-DD-HH:MM:SS.MS/
											YYYY-MM-DD-HH:MM:SS.MS_standardVideo.mp4
											YYYY-MM-DD-HH:MM:SS.MS_thumbnail_1.jpg

###Video
+ filename convention:YYYY-MM-DD-HH:MM:SS.MS_<recording_type>.mp4
+ array of type THUMBNAIL
+ recording date
+ type (slow motion, regular) -- make as ENUM
+ length
+ framerate

+ upload status
+ on device
+ cloud view link

###Thumbnail
+ name YYYY-MM-DD-HH:MM:SS.MS_thumbnail_1.mp4
+ image 
+ video (weak reference)

##Controllers
###Recording screen
- generate thumbnail from live capture
- recording finished (save, core data, etc)

###Playback screen
- play
- stop
- back

###Browse screen
- delete
- add
- did select -> play

####Framerate:
http://stackoverflow.com/questions/9497959/i-want-to-throttle-video-capture-frame-rate-in-avcapture-framework
https://developer.apple.com/library/ios/documentation/AudioVideo/Conceptual/AVFoundationPG/Articles/04_MediaCapture.html#//apple_ref/doc/uid/TP40010188-CH5-SW2
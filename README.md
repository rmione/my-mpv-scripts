# my-mpv-scripts

This is a collection of scripts that other Japanese learners who use a similar workflow to me may find helpful. I add features/tweak the code as I find bugs, or think of more functionality. 



## Subtitle Hook

Subtitle hook, grabs text-based subtitles and puts them in your clipboard. This is meant mainly to  work with text-based formats like `.srt`, `.ass`, and the like.


## zou
- Picture-based (DVD) subtitle hook (think PGS subs, subtitles hardcoded into a DVD, etc.)  Or anything onscreen. 


This uses [pytesseract](https://github.com/madmaze/pytesseract), a Python wrapper for Google's Tesseract OCR library. Therefore, make sure to follow the install guide in its README. 

Your mileage may vary on a ton of factors: 
- how much is onscreen at any given moment
- clarity of background
- pixelation of subtitles (this can be a problem when watching DVDs) 

# GetMeMyGot
####Automation tool to find and download episodes of a TV series (or anything else really) the day they release.

In its current form, GMMG downloads the latest Game of Thrones episode every Monday morning. It can probably be modified to do slightly different things.

You need both ruby AND python. Sorry.

To use,
 - modify the parts of `config.json` that you understand, ignore the ones that you don't.
 - Check out `go.sh`. This runs the script at 8.00am every day (*) in the 5th and 6th months, if that day is a Monday (1). Modify accordingly.
 - `. go.sh`

*__Disclaimer__ `subtitle-downloader.py` is not my code, I picked it up from [here](https://github.com/manojmj92/subtitle-downloader), and am using it in a way that I believe does not violate its license. Will get rid of it as soon as I can bring myself to rewrite it in ruby.*

TODO
 - Modify to make easily customizable for other series and file locations
 - Logic for selecting torrent needs improvement, right now we just pick up the first one
 - search term should be modified each time
 - Rewrite subtitle-downloader.py so you don't have to give credit
 - Make an interactive `crontab` modifier that you can call in the installer
 - And make an installer
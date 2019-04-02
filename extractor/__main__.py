from __future__ import unicode_literals
import sys
from json import dumps
import youtube_dl

ydl_opts = {
    "format": "best",
    "quiet": True
}

with youtube_dl.YoutubeDL(ydl_opts) as ydl:
    extract = ydl.extract_info
    readline = sys.stdin.readline
    while 1:
        try:
            url = readline()
        except KeyboardInterrupt:
            break

        if not url:
            break

        print(dumps(extract(url, download=False)), flush=True)

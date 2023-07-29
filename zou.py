# coding=utf8
import pytesseract
import pyperclip 
from PIL import Image
import argparse
import glob
import os

def parse_cli_args():
    parser = argparse.ArgumentParser(description='Grab Japanese text from an image')
    parser.add_argument('-t', '--tategaki', action='store_true', help='Whether or not the Japanese text is written vertically (tategaki) \
or horiziontally. Do not invoke argument if it is written horizontally.')

    return parser.parse_args()


def main():
    # First order of business is to find the most recent file in the mpv screenshots directory
    list_of_files = glob.glob(f"{os.environ['HOME']}/Pictures/mpv/*.jpg") # Grab all jpgs
    latest_file = max(list_of_files, key=os.path.getctime)
    print(latest_file)

    mode = 'jpn'
    if args.tategaki: 
        print("縦書き")
        mode = 'jpn_vert'

    try:
        print()
        with Image.open(latest_file) as img:
            # The replace + strip combo cleans up tesseract output.
            text = pytesseract.image_to_string(img, mode).replace(" ", "").strip()
            print(text)
            pyperclip.copy(text)
            
    except Exception as e:
        raise SystemExit(f"Exception occured {str(e)}")
    return text
    
if __name__ == "__main__":
    args = parse_cli_args()
    main()

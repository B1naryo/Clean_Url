# URL Cleaning Script

This script is developed to clean URLs from a provided file, removing any text appearing before 'https://' or 'http://'. It can be useful for extracting and cleaning URLs from various sources.

## Usage

Make sure to have execution permissions on the script. Execute the script by providing a file of URLs as an argument:

```bash
./clean_urls.sh urls_file.txt > urls_cleaned.txt

The script will process the provided file, clean the URLs, and print the cleaned URLs to the standard output.

Example Input and Output
Input (urls_file.txt)
[href] - https://www.example.com/page1
https://www.example.com/page2
<a href='http://www.example.com/page3'>Link</a>

Output
https://www.example.com/page1
https://www.example.com/page2
http://www.example.com/page3

Notes
Make sure to provide a valid file of URLs as input.
The script supports URLs with http:// or https://.
The script ignores lines without valid URLs.
This script does not modify the original file; it only prints the cleaned URLs to the standard output.


INTRODUCTION

Apple's MacOS comes with a very nice collection of commercial-grade,
standard fonts. Alas, for those who use open source text-processing
software, most of the fonts come shipped as .ttc (TrueType Collection)
files, and most open source software is not capable of reading such
files. So you end up with a collection of beautiful, standard system
fonts that your software cannot use.

This program extracts Macintosh *.ttc font collections into individual
*.ttf fonts, then attempts to rename the result based on the embedded
PostScript name found in the extracted files. If no name can be found,
files are left in their unrenamed form (based on the font family and
a two-digit sequence number). It is based on two user-contributed
utilities distributed with FontForge.

BUILDING

If you're in the situation where you need this program, you probably
have already installed Xcode on your system, anyhow, because you've been
using it to build open-source programs already. If for some reason you
haven't installed the command-line Xcode tools on your Mac yet, you must
do that first. Be sure to install the command- line tools (they tend not
to be installed by default).

Xcode may be downloaded for free here:
    https://developer.apple.com/xcode/

Once you have Xcode, building the code from source is as simple as
typing "make" to the command prompt.

INSTALLING

Once you've built the binaries, edit the getfonts script and change
the definition of gfhome to point to where those binaries live, then
copy that script to a directory that's on your PATH.

USING

Just pass getfonts the name of a .ttc file, and its contents will be
extracted to files in your home directory:

$ getfonts /Library/Fonts/Hoefler\ Text.ttc
/Library/Fonts/Hoefler Text.ttc ...
/Library/Fonts/Hoefler Text.ttc => Hoefler Text_00.ttf Hoefler Text_01.ttf Hoefler Text_02.ttf Hoefler Text_03.ttf
Hoefler Text_00.ttf -> HoeflerText-Regular.ttf
Hoefler Text_01.ttf -> HoeflerText-Black.ttf
Hoefler Text_02.ttf -> HoeflerText-Italic.ttf
Hoefler Text_03.ttf -> HoeflerText-BlackItalic.ttf

Sometimes you may run across fonts without embedded names, which you
will have to rename yourself (hint: open them in FontBook to inspect
them):

$ getfonts /Library/Fonts/Baskerville.ttc
/Library/Fonts/Baskerville.ttc ...
/Library/Fonts/Baskerville.ttc => Baskerville_00.ttf Baskerville_01.ttf Baskerville_02.ttf Baskerville_03.ttf Baskerville_04.ttf Baskerville_05.ttf
No name found in Baskerville_00.ttf.
No name found in Baskerville_01.ttf.
No name found in Baskerville_02.ttf.
No name found in Baskerville_03.ttf.
No name found in Baskerville_04.ttf.
No name found in Baskerville_05.ttf.

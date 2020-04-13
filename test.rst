Main Page Title
===============

Introduction
------------

Apple's MacOS comes with a very nice collection of commercial-grade, standard fonts. Alas, for those who use open source text-processing software, most of the fonts come shipped as .ttc (TrueType Collection) files, and most open source software is not capable of reading such files. So you end up with a collection of beautiful, standard system fonts that your software cannot use.

This program extracts Macintosh *.ttc font collections into individual *.ttf fonts, then attempts to rename the result based on the embedded PostScript name found in the extracted files. If no name can be found, files are left in their unrenamed form (based on the font family and a two-digit sequence number). It is based on two user-contributed utilities distributed with FontForge.

Building
--------

If you're in the situation where you need this program, you probably
have already installed Xcode on your system, anyhow, because you've been
using it to build open-source programs already. If for some reason you
haven't installed the command-line Xcode tools on your Mac yet, you must
do that first. Be sure to install the command- line tools (they tend not
to be installed by default).

Xcode may be downloaded for free here: `https://en.wikipedia.org/<https://en.wikipedia.org/>`_

Note that this section has line breaks in its input paragraphs. That is a test
of whether or not Textile demands input in longlines form.

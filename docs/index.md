---
layout: default
title: Home
nav_order: 1
permalink: /
---
<p align="center">
<img src="https://i.ibb.co/L110Zfg/Condor-Emacs.png" alt="Branching">
</p>


<p align="center">
  <img src="https://img.shields.io/github/license/apemangr/Condor-Emacs" alt="License" title="" />
  <img src="https://img.shields.io/github/issues/apemangr/Condor-Emacs" alt="Issues" title="" />  
  <img src="https://img.shields.io/github/stars/apemangr/Condor-Emacs" alt="Stars" title="" /> 
  <img src="https://img.shields.io/github/downloads/apemangr/Condor-Emacs/v1.0-beta/total" alt="Downloads" title="" />
</p>

<p align="justify">
  <b>Condor Emacs</b> is an option to take the Emacs experience just out of the box, designed for the newbie and the expert.
 At this time, this version is only focused to be a C and C++ languages IDE. But very soon will have support for more languages.
  For the moment this is just a beta, any help with this project is welcome.
</p>



[Releases](https://github.com/apemangr/Condor-Emacs/releases){: .btn .btn-purple .px-6 }
[View on Github](https://github.com/apemangr/Condor-Emacs){: .btn .btn-blue .px-7 }

# Getting started
To run Condor Emacs you need to have Emacs 25 or above and all corresponding dependencies (This version was built in Emacs 26.3).

### Linux

You can install Emacs from your favorite package manager of your Linux distribution. The package name is "emacs".

**Arch Linux**
```sh
$ sudo pacman -S emacs
```
**Ubuntu**
```sh
$ sudo apt-get install emacs
```
**Fedora**
```sh
$ sudo dnf install emacs
```
**OpenSUSE**
```sh
$ sudo zypper install emacs
```
**Note:** Condor Emacs has been tested correctly in Arch Linux with KDE and Xfce desktop enviroments.

### macOS

It's recommended to use [homebrew](https://brew.sh/).
```sh
$ brew tap d12frosted/emacs-plus
$ brew install emacs-plus
$ brew linkapps emacs-plus
```
This will install a version of Emacs with support of several features.

For more information about homebrew, please visit https://docs.brew.sh/.

**Using MacPorts:**

```sh
$ sudo port install emacs-app
```

The [Emacs for OSX](https://emacsformacosx.com/) website also provides universal binaries.

**NOTE:** Condor Emacs has not been tested yet on macOS (Help needed).

### Windows

GNU Emacs for Windows can be downloaded from a [nearby GNU mirror](http://espejito.fder.edu.uy/gnu/emacs/windows/); or the [main GNU FTP server](http://ftp.gnu.org/gnu/emacs/windows/).

Unzip the zip file preserving the directory structure, and run bin\runemacs.exe. Alternatively, create a desktop shortcut to **bin\runemacs.exe**, and start Emacs by double-clicking on that shortcut's icon.

The Windows binaries are signed by Phillip Lord **8493 0FFB 79B6 45F7 DEA2 9AD0 AC6D D3FF D1D0 46BD**.

MSYS2 users can install Emacs (64bits build) with the following:

```sh
$ pacman -S mingw-w64-x86_64-emacs
```
For the 32bits build, evaluate:

```sh
$ pacman -S mingw-w64-i686-emacs
```

**NOTE:** Condor Emacs has not been tested yet on Windows.

Source: [GNU Emacs site](https://www.gnu.org/software/emacs/download.html#windows)

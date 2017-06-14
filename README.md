# Vault-Project
This is a Public test Repo for ESP Flasher.

This Repo contains an Alpha version of the ESP Flasher Program developed by Donovan Goodwin (DGxInfinitY).
This version of ESP Flasher is unusable as of Version 0.3.1.

ESP Flasher is built on:

<code>Vala 0.34.8</code>, <code>Gtk3+</code>, and on an AMD64 Linux box(elementary OS)

Anyone willing to compile a binary for different platforms can email me at ddg2goodwin@gmail.com and I will send instructions
and add it to this repository.

# Note
To run the compiled binary you must be on a 64bit Linux distro and must have the "espflasher.ui" file in the same
directory as the compiled binary. The program must be run from terminal so that it may report runtime errors in stdout.

# How to compile for your platform
I would recommend compiling using valac. Open a terminal in the location of the espflasher.vala (and espflasher.ui) file and type:

<code>valac --pkg gtk+-3.0 --pkg granite --pkg gmodule-2.0 espflasher.vala --enable-version-header -X -rdynamic</code>

This should complete with no errors, however to see what is really going on it may be useful to add the -v option to
the command:

<code>valac --pkg gtk+-3.0 --pkg granite --pkg gmodule-2.0 espflasher.vala -v --enable-version-header -X -rdynamic</code>

If you're on a Debian based distro you can install vala by running these commands:

<code>sudo add-apt-repository ppa:vala-team</code>

<code>sudo apt update && sudo apt install valac valac-dbg -y</code>

You can find how to install valac on your distro with a Google search. ie "How to install vala on [Insert Distro Here]"

If you're on MacOS you can install vala and it's compiler using homebrew: <code>brew install vala</code> in your terminal

If you're on Windows you can install vala and it's compiler by following the info on this page:
https://wiki.gnome.org/Projects/Vala/ValaOnWindows

# To Do list
1. Getting the About Dialog to open after pressing the about button(It may also be better to get it to open from a seperate Ui file)
2. Getting File Manager and Board Selector to look in the right places for device as well as filtering the selectable files.
3. Converting the esptool python program to Linux executable for greatest portability as well as ease of use.
4. Implementing a way for us to hook into the esptool program.

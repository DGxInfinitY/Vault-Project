# Vault-Project
This is a Public test Repo for ESP Flasher.

This Repo contains an Alpha version of the ESP Flasher Program developed by Donovan Goodwin (DGxInfinitY).
This version of ESP Flasher is unusable as of Version 0.3.

ESP Flasher is built on:

<code>Vala 0.34.8</code> and <code>Gtk3+</code> And on an AMD64 Linux box(elementary OS)

Anyone willing to compile a binary for different platforms can email me at ddg2goodwin@gmail.com and I will send instructions
and add it to this repository.

# Note
To run the compiled binary you must be on a 64bit Linux distro and must have the "espflasher.ui" file in the same
directory as the compiled binary. The program must be run from terminal so that it may report runtime errors in stdout.

# How to compile for your platform
I would recommend compiling using valac. Open a terminal in the location of the espflasher.vala (and espflasher.ui) file and type:

<code>valac --pkg gtk+-3.0 espflasher.vala</code>

This should complete with no errors, however to see what is really going on it may be useful to add the -v option to
the command:

<code>valac --pkg gtk+-3.0 espflasher.vala -v</code>

If you're on a Debian based distro you can install vala by running these commands:

<code>sudo add-apt-repository ppa:vala-team</code>

<code>sudo apt update && sudo apt install valac valac-dbg -y</code>

You can find how to install valac on your distro with a Google search. ie "How to install vala on [Insert Distro Here]"

If you're on MacOS you can install vala and it's compiler using homebrew: <code>brew install vala</code> in your terminal

If you're on Windows you can install vala and it's compiler by following the info on this page:
https://wiki.gnome.org/Projects/Vala/ValaOnWindows

# Roadmap
I am wanting to have the program in a working state by the end of this month if at all possible, it is going to be hard with
my birthday being this month as well as my sister's, grandpa's, and brother's but I will try my hardest to get the back end
functioning this month.

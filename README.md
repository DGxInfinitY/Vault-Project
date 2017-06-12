# Vault-Project
This is a Public test Repo for ESP Flasher.

This Repo Contains an Alpha Version of the ESP Flasher Program developed by Donovan Goodwin (DGxInfinitY).
This version of ESP Flasher is unusable as of commiting this README.
This is built on:

<code>Vala 0.34.8</code> and <code>Gtk3</code> And on an AMD64 Linux box(elementary OS)

Anyone willing to compile a binary for different platforms can email me and I will send instructions and add it to this repository.

# Note
To run compiled binary you must be running an AMD64 linux computer and must have the "espflasher.ui" file in the same
directory as the compiled binary.

# How to Compile for your platform
I would recommend compiling using valac. Open a terminal in the location of the espflasher.vala and type:
<code>valac --pkg gtk+-3.0 espflasher.vala</code>
This should complete with no errors, however to see what is really going on it could be usefull to add the -v option to 
the command:
<code>valac --pkg gtk+-3.0 espflasher.vala -v</code>

If you're on MacOs you can install vala and it's compiler using <code>brew install vala</code> in your terminal
If you're on Windows you can install vala and it's compiler by following the info on this page: https://wiki.gnome.org/Projects/Vala/ValaOnWindows

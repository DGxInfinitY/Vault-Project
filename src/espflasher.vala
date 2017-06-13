/*
// Version 0.3.1 Alpha
// ESPFlasher by Donovan Goodwin
*/
using Gtk;
using Granite;

public void about_button_clicked()  {
  //Adding Stuff Here
}
public void help_clicked()  {
  //Adding Stuff Here
}
public void upload_clicked()  {
  //Adding Stuff Here
}

int main (string[] args) {
    Gtk.init (ref args);

    try {
        // If the UI contains custom widgets, their types must've been instantiated once
        //Type type = typeof(aboutdialog);
        //assert(type != 0);
        var builder = new Builder ();
        builder.add_from_file ("espflasher.ui");
        builder.connect_signals (null);
        var window = builder.get_object("window1") as Window;
        //var aboutdialog = builder.get_object("aboutdialog");


        //string[] authors = {"Donovan Goodwin", "The Irish Dragon"};
    	   // Use property names as keys
    	  //Gtk.show_about_dialog (window,
    		//program_name: "ESP Flasher",
    		//copyright: "Copyright © 1998-2000 Gyro Gearloose",
    		//authors: authors,
    		//website: "http://gihub.com/dgxinfinity/Vault-Project",
        //website_label: "Github");

        window.show_all ();
        Gtk.main ();
    } catch (Error e) {
        stderr.printf ("Could not load UI: %s\n", e.message);
        return 1;
    }

    return 0;
}

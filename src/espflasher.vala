using Gtk;

public void upload_clicked (Button source) {
    //source.label = "Thank you!";
}


public void help_clicked (Button source) {
    /* When window close signal received */
    //Gtk.main_quit ();
}

//public void about_clicked (Button source) {
    /* When window close signal received */
//    aboutdialog();
//}

int main (string[] args) {
    Gtk.init (ref args);

    try {
        // If the UI contains custom widgets, their types must've been instantiated once
        // Type type = typeof(Foo.BarEntry);
        // assert(type != 0);
        var builder = new Builder ();
        builder.add_from_file ("espflasher.ui");
        builder.connect_signals (null);
        var window = builder.get_object ("window1") as Window;
        //var aboutdialog = builder.get_object ("aboutdialog") as Gtkaboutdialog;
        window.show_all ();
        Gtk.main ();
    } catch (Error e) {
        stderr.printf ("Could not load UI: %s\n", e.message);
        return 1;
    }

    return 0;
}

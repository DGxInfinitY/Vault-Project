/*
//Version 0.3 Alpha
//ESPFlasher by Donovan Goodwin
*/
using Gtk;

/*
// Here I am going to add the functions of the buttions
// To allow for selecting, uploading, and monitoring
// Of ESP operations.
//
*/
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

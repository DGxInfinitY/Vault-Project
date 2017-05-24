using Gtk;
Window window;

static Box make_box (bool homogeneous, int spacing, bool expand, bool fill, int padding) {
  Box box;
  Button button;
  /* Create a new Box with the appropriate orientation
   * and spacing settings */
  box = new Box(Orientation.HORIZONTAL, spacing);
  /* Set whether all child widgets be the same size. */
  box.set_homogeneous(homogeneous);
  //Buton #1
  button = new Button.with_label("Select .bin File");
  button.clicked.connect(on_open_clicked);
  box.pack_start(button, expand, fill, padding);
  button.show();
  //Button #2
  button = new Button.with_label ("Select Serial Port");
  box.pack_start(button, expand, fill, padding);
  button.show();
  //Button #3
  button = new Button.with_label("Set Memory Address");
  box.pack_start(button, expand, fill, padding);
  button.show();
  //Button #4
  button = new Button.with_label("Upload to Board");
  box.pack_start(button, expand, fill, padding);
  button.show();

  return box;
}

class PackBox : Window {

  public bool on_delete_event () {
    main_quit();
    return false;
  }

  public PackBox (int which) {

    /* You should always remember to connect the delete_event signal
     * to the main window. This is very important for proper intuitive
     * behavior */

    this.delete_event.connect(this.on_delete_event);
    this.set_border_width(10);

    /* We create a vertical box (vbox) to pack the horizontal boxes
     * into. This allows us to stack the horizontal boxes filled with
     * buttons one on top of the other in this vbox. */
    var box1 = new Box(Orientation.VERTICAL, 0);

    /* Which example to show. These correspond to the pictures above. */
    switch (which) {
      case 1:
        /* create two new labels. */
        var label = new Label("ESP Flasher");
        var label2 = new Label("Warning: Alpha Level Software!");

        /* Align the labels to the left side.  We'll discuss this method
         * and others in the section on Widget Attributes. */
        label.set_alignment(0, 0);
        label2.set_alignment(0, 0);

        /* Pack the labels into the vertical box (box box1).  Remember
         * that widgets added to a vertically oriented box will be
         * packed one on top of the other in order. */
        box1.pack_start(label, false, false, 0);
        box1.pack_start(label2, false, false, 0);

        /* Show the labels. */
        label.show();
        label2.show();

        /* Call our make box function - homogeneous = false, spacing = 0,
         * expand = false, fill = false, padding = 0 */
        var box2 = make_box(false, 0, false, false, 0);
        //box1.pack_start(box2, false, false, 0);
        //box2.show();

        /* Call our make box function - homogeneous = false, spacing = 0,
         * expand = true, fill = false, padding = 0 */
        box2 = make_box(false, 0, true, false, 0);
        box1.pack_start(box2, false, false, 0);
        box2.show();

        /* Args are: homogeneous, spacing, expand, fill, padding */
        //box2 = make_box(false, 0, true, true, 0);
        //box1.pack_start(box2, false, false, 0);
        //box2.show();

        /* Creates a separator, we'll learn more about these later,
         * but they are quite simple. */
        var separator = new Separator(Orientation.HORIZONTAL);

        /* Pack the separator into the vbox. Remember each of these
         * widgets is being packed into a vertically oriented box, so
         * they'll be stacked vertically. */
        box1.pack_start(separator, false, true, 5);
        separator.show();



        break;
      case 2:
        /* Create a new label, remember box1 is a vbox as created
         * near the beginning of the constructor. */
        var label = new Label("Box(HORIZONTAL, 10)");
        label.set_alignment( 0, 0);
        box1.pack_start(label, false, false, 0);
        label.show();

        var label2 = new Label("box.set_homogeneous(false)");
        label2.set_alignment( 0, 0);
        box1.pack_start(label2, false, false, 0);
        label2.show();

        /* Args are: homogeneous, spacing, expand, fill, padding. */
        var box2 = make_box(false, 10, true, false, 0);
        box1.pack_start(box2, false, false, 0);
        box2.show();

        /* Args are: homogeneous, spacing, expand, fill, padding */
        box2 = make_box(false, 10, true, true, 0);
        box1.pack_start(box2, false, false, 0);
        box2.show();

        var separator = new Separator(Orientation.HORIZONTAL);
        /* The last 3 arguments to pack_start are:
         * expand, fill, padding. */
        box1.pack_start(separator, false, true, 5);
        separator.show();

        label = new Label("Box(HORIZONTAL, 0)");
        label.set_alignment(0, 0);
        box1.pack_start(label, false, false, 0);
        label.show();

        label2 = new Label("box.set_homogeneous(false)");
        label2.set_alignment( 0, 0);
        box1.pack_start(label2, false, false, 0);
        label2.show();

        /* Args are: homogeneous, spacing, expand, fill, padding. */
        box2 = make_box(false, 0, true, false, 10);
        box1.pack_start(box2, false, false, 0);
        box2.show();

        /* Args are: homogeneous, spacing, expand, fill, padding. */
        box2 = make_box(false, 0, true, true, 10);
        box1.pack_start(box2, false, false, 0);
        box2.show();

        separator = new Separator(Orientation.HORIZONTAL);
        /* The last 3 arguments to pack_start are:
         * expand, fill, padding. */
        box1.pack_start(separator, false, true, 5);
        separator.show();
      break;
      case 3:
        /* This demonstrates the ability to use pack_end() to
         * right justify widgets. First, we create a new box as before. */
        var box2 = make_box(false, 0, false, false, 0);

        /* Create the label that will be put at the end. */
        var label = new Label("end");
        /* Pack it using pack_end(), so it is put on the right
         * side of the hbox created in the make_box() call. */
        box2.pack_end(label, false, false, 0);
        /* Show the label. */
        label.show();

        /* Pack box2 into box1 */
        box1.pack_start(box2, false, false, 0);
        box2.show();

        /* A separator for the bottom. */
        var separator = new Separator(Orientation.HORIZONTAL);

        /* This explicitly sets the separator to 400 pixels wide by 5
         * pixels high. This is so the hbox we created will also be 400
         * pixels wide, and the "end" label will be separated from the
         * other labels in the hbox. Otherwise, all the widgets in the
         * hbox would be packed as close together as possible.
         * separator.set_size_request(400, 5)
         * pack the separator into the vbox (box1) created near the
         * start of the constructor. */
        box1.pack_start(separator, false, true, 5);
        separator.show();
      break;
    }

    /* Pack the vbox (box1) which now contains all our widgets, into the
     * main window. */
    this.add(box1);
    box1.show();
    /* Showing the window last so everything pops up at once. */
    this.show();
  }

  public static int main (string[] args) {

    if (args.length == 2) {

      init(ref args);
      //Making HeaderBar
      var header = new HeaderBar();
      header.set_title("ESP Flasher");
      header.set_subtitle("Alpha");
      header.set_show_close_button(true);
      //Making Window
      var window = new PackBox(int.parse(args[1]));
      window.window_position = WindowPosition.CENTER;
      window.destroy.connect(main_quit);
      window.set_titlebar(header);
      window.border_width = 2;


      //var button = new Gtk.Button.with_label ("Flash Bootloader");
      //button.clicked.connect (reverse_label);
      //button.show ();
      //window.add (button);
      //var open_icon = new Gtk.Image.from_icon_name("document-open", IconSize.SMALL_TOOLBAR);
      //var open_button = new Gtk.ToolButton(open_icon, "Open");
      //open_button.is_important = true;
      //header.add(open_button);
      //open_button.clicked.connect(on_open_clicked);


      //text_view = new TextView ();
      //text_view.editable = false;
      //text_view.cursor_visible = false;

      //var vbox = new Box (Orientation.VERTICAL, 0);
      //vbox.pack_start (button);
      //window.add (vbox);

      window.destroy.connect (Gtk.main_quit);
      window.show_all ();



      /* And of course, our mainloop. */
      Gtk.main();

      /* Control returns here when main_quit() is called. */
      return 0;

    } else {
      stderr.printf("usage: ./main <num> where <num> is 1, 2, or 3.\n");
      /* This just does cleanup in GTK and exits with an exit status
       * of 1. */
      Process.exit (1);
    }

  }
}

void on_open_clicked () {
  var file_chooser = new FileChooserDialog (
                                "Open File",
                                window,
                                FileChooserAction.OPEN,
                                "_Cancel", ResponseType.CANCEL,
                                "_Open", ResponseType.ACCEPT);
                                // We are only interested in bins:
  FileFilter filter = new FileFilter ();
  file_chooser.set_filter (filter);
  filter.add_mime_type ("application/octet-stream");
  if (file_chooser.run () == ResponseType.ACCEPT) {
    open_file (file_chooser.get_filename ());
  }
  file_chooser.destroy ();
}

void open_file (string filename) {
  try {


  } catch (Error e) {
    stderr.printf ("Error: %s\n", e.message);
  }
}

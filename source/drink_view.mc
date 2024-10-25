import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.System;


class drink_view extends WatchUi.View {

    var description;
    var myTextArea;
    var width;
    var height;

    function initialize(incoming_description) {
        View.initialize();
        description = incoming_description;
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        width = dc.getWidth();
        height = dc.getHeight();
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
        // System.println(description);
        myTextArea = new WatchUi.TextArea({
            :text=>description,
            :color=>Graphics.COLOR_WHITE,
            :font=>[Graphics.FONT_SYSTEM_SMALL, Graphics.FONT_SYSTEM_TINY, Graphics.FONT_SYSTEM_XTINY],
            :locX =>WatchUi.LAYOUT_HALIGN_CENTER,
            :locY=>WatchUi.LAYOUT_HALIGN_CENTER,
            :width=>width * 0.8,
            :height=>height * 0.4,
            :justification=>Graphics.TEXT_JUSTIFY_CENTER
        });
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
        dc.clear();
        myTextArea.draw(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}

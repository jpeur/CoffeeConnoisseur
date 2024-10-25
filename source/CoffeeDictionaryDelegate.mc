import Toybox.Lang;
import Toybox.WatchUi;

class CoffeeDictionaryDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onSelect() as Boolean {
        var menu = new WatchUi.Menu2({:title=>"Coffee Types"});
        var delegate;

        // Aperol-based drinks
        menu.addItem(
            new MenuItem(
                "Aperol Spritz",
                "Aperol",
                "aper",
                {}
            )
        );

        return true;
    }

}
import Toybox.Graphics;
import Toybox.WatchUi;

class CoffeeConnoisseurView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        // setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
        var menu = new WatchUi.Menu2({:title => "Coffee Drinks"});
        var delegate;

        menu.addItem(new MenuItem("Affogato", "", "affo", {}));
        menu.addItem(new MenuItem("Americano", "", "amer", {}));
        menu.addItem(new MenuItem("Black Eye", "", "blac", {}));
        menu.addItem(new MenuItem("Breve", "", "brev", {}));
        menu.addItem(new MenuItem("Bulletproof", "", "bull", {}));
        menu.addItem(new MenuItem("Café au Lait", "", "cafe", {}));
        menu.addItem(new MenuItem("Caffe Breve", "", "bree", {}));
        menu.addItem(new MenuItem("Cappuccino", "", "capp", {}));
        menu.addItem(new MenuItem("Cold Brew", "", "cold", {}));
        menu.addItem(new MenuItem("Con Panna", "", "cons", {}));
        menu.addItem(new MenuItem("Cortado", "", "cort", {}));
        menu.addItem(new MenuItem("Doppio", "", "dopp", {}));
        menu.addItem(new MenuItem("Drip", "", "drip", {}));
        menu.addItem(new MenuItem("Espresso", "", "espr", {}));
        menu.addItem(new MenuItem("Flat Cold White", "", "flatc", {}));
        menu.addItem(new MenuItem("Flat White", "", "flat", {}));
        menu.addItem(new MenuItem("Galão", "", "gala", {}));
        menu.addItem(new MenuItem("Iced Coffee", "", "iced", {}));
        menu.addItem(new MenuItem("Iced Latte", "", "icedl", {}));
        menu.addItem(new MenuItem("Irish Coffee", "", "iris", {}));
        menu.addItem(new MenuItem("Latte", "", "latt", {}));
        menu.addItem(new MenuItem("Long Black", "", "long", {}));
        menu.addItem(new MenuItem("Lungo", "", "lung", {}));
        menu.addItem(new MenuItem("Macchiato", "", "mach", {}));
        menu.addItem(new MenuItem("Mazagran", "", "maza", {}));
        menu.addItem(new MenuItem("Mexican Coffee", "", "mexi", {}));
        menu.addItem(new MenuItem("Mocha", "", "moch", {}));
        menu.addItem(new MenuItem("Nitro Cold Brew", "", "nitr", {}));
        menu.addItem(new MenuItem("Red Eye", "", "rede", {}));
        menu.addItem(new MenuItem("Ristretto", "", "rist", {}));
        menu.addItem(new MenuItem("Turkish Coffee", "", "turk", {}));

        delegate = new definition_Menu2Delegate();
        WatchUi.pushView(menu, delegate, WatchUi.SLIDE_IMMEDIATE);
        // return true;
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}

import Toybox.WatchUi;
import Toybox.Lang;
import Toybox.System;

class definition_Menu2Delegate extends WatchUi.Menu2InputDelegate {
    function initialize() {
        Menu2InputDelegate.initialize();
    }

    function onSelect(item as WatchUi.MenuItem) {
        var definition_dict = {
            "affo" => "Affogato: Vanilla ice cream with a shot of hot espresso.",
            "amer" => "Americano: Espresso with hot water added on top.",
            "blac" => "Black Eye: Drip coffee with two shots of espresso.",
            "brev" => "Breve: Espresso with steamed half-and-half.",
            "cafe" => "Café au Lait: Brewed coffee with steamed milk.",
            "capp" => "Cappuccino: Espresso with steamed milk and foam.",
            "cold" => "Cold Brew: Coffee brewed cold and served chilled.",
            "cort" => "Cortado: Espresso with equal parts steamed milk.",
            "dopp" => "Doppio: Double shot of espresso.",
            "espr" => "Espresso: Concentrated coffee shot.",
            "flat" => "Flat White: Espresso with steamed milk microfoam.",
            "iced" => "Iced Coffee: Coffee brewed hot and served over ice.",
            "latt" => "Latte: Espresso with steamed milk and light foam.",
            "long" => "Long Black: Espresso poured over hot water.",
            "mach" => "Macchiato: Espresso with a small amount of foam.",
            "moch" => "Mocha: Espresso with steamed milk and chocolate.",
            "nitr" => "Nitro Cold Brew: Cold brew infused with nitrogen.",
            "rede" => "Red Eye: Brewed coffee with a shot of espresso.",
            "rist" => "Ristretto: Short, concentrated espresso shot."
        };

        var definition = definition_dict[item.getId()];
        // System.println(definition);

        var view = new drink_view(definition);
        var delegate = new drink_delegate();

        WatchUi.pushView(view, delegate, WatchUi.SLIDE_UP);
    }

    function onBack() as Void {
        System.exit();
    }
}

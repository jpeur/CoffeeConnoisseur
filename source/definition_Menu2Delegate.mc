import Toybox.WatchUi;
import Toybox.Lang;
import Toybox.System;

class definition_Menu2Delegate extends WatchUi.Menu2InputDelegate {
    function initialize() {
        Menu2InputDelegate.initialize();
    }

    function onSelect(item as WatchUi.MenuItem) {
        var definition_dict = {
            "affo" => "Affogato: Ice cream with a shot of hot espresso.",
            "amer" => "Americano: Espresso diluted with hot water.",
            "blac" => "Black Eye: Coffee with two shots of espresso.",
            "brev" => "Breve: Espresso with steamed half-and-half.",
            "cafe" => "Café au Lait: Coffee with steamed milk.",
            "capp" => "Cappuccino: Espresso with steamed milk foam.",
            "cold" => "Cold Brew: Coffee brewed cold, served chilled.",
            "cort" => "Cortado: Espresso with equal steamed milk.",
            "dopp" => "Doppio: Double shot of espresso.",
            "espr" => "Espresso: Strong, concentrated coffee shot.",
            "flat" => "Flat White: Espresso with microfoam milk.",
            "iced" => "Iced Coffee: Brewed coffee served over ice.",
            "latt" => "Latte: Espresso with steamed milk and light foam.",
            "long" => "Long Black: Espresso poured over hot water.",
            "mach" => "Macchiato: Espresso with a small foam topping.",
            "moch" => "Mocha: Espresso with steamed milk and chocolate.",
            "nitr" => "Nitro Cold Brew: Cold brew with nitrogen for a creamy texture.",
            "rede" => "Red Eye: Coffee with a shot of espresso.",
            "rist" => "Ristretto: Short, concentrated espresso shot."
        };

        var definition = definition_dict[item.getId()];
        System.println(definition);

        var view = new drink_view(definition);
        var delegate = new drink_delegate();

        WatchUi.pushView(view, delegate, WatchUi.SLIDE_UP);
    }

    function onBack() as Void {
        System.exit();
    }
}
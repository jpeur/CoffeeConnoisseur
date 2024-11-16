import Toybox.WatchUi;
import Toybox.Lang;
import Toybox.System;

class definition_Menu2Delegate extends WatchUi.Menu2InputDelegate {
    function initialize() {
        Menu2InputDelegate.initialize();
    }

    function onSelect(item as WatchUi.MenuItem) {
        var definition_dict = {
            "affo" => "Affogato: Vanilla ice cream with a shot of hot espresso poured over.",
            "amer" => "Americano: Smooth espresso with hot water added on top, like a milder black coffee.",
            "blac" => "Black Eye: Brewed coffee with two shots of espresso for extra strength.",
            "brev" => "Breve: Espresso combined with steamed half-and-half for a richer taste.",
            "cafe" => "Café au Lait: Coffee mixed with steamed milk, simple and mild.",
            "capp" => "Cappuccino: Espresso topped with steamed milk and a layer of foam.",
            "cold" => "Cold Brew: Coffee brewed slowly with cold water, served chilled.",
            "cort" => "Cortado: Equal parts espresso and steamed milk for a balanced taste.",
            "dopp" => "Doppio: A double shot of espresso, strong and concentrated.",
            "espr" => "Espresso: A small, concentrated shot of coffee with bold flavor.",
            "flat" => "Flat White: Espresso with smooth microfoam milk for a creamy texture.",
            "iced" => "Iced Coffee: Brewed coffee poured over ice for a refreshing cold drink.",
            "icedl" => "Iced Latte: Espresso poured over ice and combined with chilled milk." ,
            "latt" => "Latte: Espresso with steamed milk and a light layer of foam on top.",
            "long" => "Long Black: Espresso poured over hot water, keeping crema and boldness.",
            "mach" => "Macchiato: Espresso with just a touch of foam, giving a slight creaminess.",
            "moch" => "Mocha: Espresso blended with steamed milk and chocolate for sweetness.",
            "nitr" => "Nitro Cold Brew: Cold brew infused with nitrogen, creating a creamy texture.",
            "rede" => "Red Eye: Brewed coffee with a shot of espresso for extra kick.",
            "rist" => "Ristretto: A shorter, highly concentrated espresso shot.",
            "lung" => "Lungo: A 'long' espresso with more water, giving a smoky taste.",
            "gala" => "Galão: A Portuguese coffee similar to latte but with more milk foam.",
            "cons" => "Con Panna: Espresso topped with whipped cream for a sweet finish.",
            "iris" => "Irish Coffee: Coffee mixed with whiskey, sugar, and cream.",
            "turk" => "Turkish Coffee: Unfiltered coffee brewed in a cezve, rich and strong.",
            "bull" => "Bulletproof Coffee: Brewed coffee blended with butter and oil.",
            "maza" => "Mazagran: Espresso with lemon and sugar, sometimes with rum.",
            "mexi" => "Mexican Coffee: Coffee with dark sugar and cinnamon.",
            "flatc" => "Flat Cold White: Cold version of flat white with ice and microfoam.",
            "drip" => "Drip Coffee: Coffee brewed with hot water over grounds, simple and classic."
    };

        var definition = definition_dict[item.getId()];
        // System.println(definition);

        var view = new drink_view(definition);
        var delegate = new drink_delegate();

        WatchUi.pushView(view, delegate, WatchUi.SLIDE_LEFT);
    }

    function onBack() as Void {
        System.exit();
    }
}

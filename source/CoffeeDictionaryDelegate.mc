import Toybox.Lang;
import Toybox.WatchUi;

class CoffeeDictionaryDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onSelect() as Boolean {
        var menu = new WatchUi.Menu2({:title => "Coffee Drinks"});
        var delegate;

        // Coffee-based drinks in alphabetical order
        menu.addItem(
            new MenuItem(
                "Affogato",
                "",
                "affo",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Americano",
                "",
                "amer",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Black Eye",
                "",
                "blac",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Breve",
                "",
                "brev",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Café au Lait",
                "",
                "cafe",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Cappuccino",
                "",
                "capp",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Cold Brew",
                "",
                "cold",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Cortado",
                "",
                "cort",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Doppio",
                "",
                "dopp",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Espresso",
                "",
                "espr",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Flat White",
                "",
                "flat",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Iced Coffee",
                "",
                "iced",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Latte",
                "",
                "latt",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Long Black",
                "",
                "long",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Macchiato",
                "",
                "mach",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Mocha",
                "",
                "moch",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Nitro Cold Brew",
                "",
                "nitr",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Red Eye",
                "",
                "rede",
                {}
            )
        );

        menu.addItem(
            new MenuItem(
                "Ristretto",
                "",
                "rist",
                {}
            )
        );

        delegate = new definition_Menu2Delegate();
        WatchUi.pushView(menu, delegate, WatchUi.SLIDE_UP);
        return true;
    }
}
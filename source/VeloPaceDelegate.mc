import Toybox.Lang;
import Toybox.WatchUi;

class VeloPaceDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new VeloPaceMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}
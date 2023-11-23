import Toybox.Graphics;
import Toybox.WatchUi;

class VeloPaceView extends WatchUi.View {

    hidden var heartRateLabel;

    function initialize() {
        View.initialize();
    }

    function onShow() {
        heartRateLabel = new WatchUi.Text({
            :text=>"HR x 10: --",
            :color=>Graphics.COLOR_WHITE,
            :font=>Graphics.FONT_LARGE,
            :locX =>WatchUi.LAYOUT_HALIGN_CENTER,
            :locY=>WatchUi.LAYOUT_VALIGN_CENTER
        });
    }
    function updateHeartRate(modifiedHeartRate) {
        heartRateLabel.setText("HR x 10: " + modifiedHeartRate);
    }

    function onUpdate(dc) {
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
        dc.clear();
        heartRateLabel.draw(dc);
    }

}

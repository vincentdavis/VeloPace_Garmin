import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;
using Toybox.Sensor as Sensor;

class VeloPaceApp extends Application.AppBase {

    var view; // Reference to the UI view

    function initialize() {
        AppBase.initialize();
        view = new VeloPaceView();
        Sensor.setEnabledSensors([Sensor.SENSOR_HEARTRATE]);
        Sensor.enableSensorEvents(method(:onSensor));
    }
    
    function onSensor(sensorInfo as Sensor.Info) as Void {
        if (sensorInfo.heartRate != null) {
            var modifiedHeartRate = sensorInfo.heartRate * 10;
            view.updateHeartRate(modifiedHeartRate);
        }
        else{
            System.println("Heart Rate : null");
        }
    }


    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() as Array<Views or InputDelegates>? {
        return [ view, new VeloPaceDelegate() ] as Array<Views or InputDelegates>;
    }

}

function getApp() as VeloPaceApp {
    return Application.getApp() as VeloPaceApp;
}
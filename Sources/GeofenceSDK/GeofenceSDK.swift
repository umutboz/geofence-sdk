// The Swift Programming Language
// https://docs.swift.org/swift-book

public class Geofence {
    // single kullanim icin
    @MainActor public static let shared = Geofence()
    private let geofenceManager = GeofenceManager()

    private init() {}

    public func startGeofenceMonitoring(locations: [(name: String, latitude: Double, longitude: Double)]) {
        geofenceManager.startGeofenceMonitoring(locations: locations)
    }
}

import CoreLocation
import UserNotifications

public class GeofenceManager: NSObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()
    private var regions: [CLCircularRegion] = []

    public override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
    }

    public func startGeofenceMonitoring(locations: [(name: String, latitude: Double, longitude: Double)]) {
        for location in locations {
            let region = CLCircularRegion(
                center: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude),
                radius: 100,  // 100 metre yarıçap
                identifier: location.name
            )
            region.notifyOnEntry = true
            region.notifyOnExit = true
            regions.append(region)
            locationManager.startMonitoring(for: region)
        }
    }

    // enter Area ve notification gonderimi
    public func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        if let circularRegion = region as? CLCircularRegion {
            sendNotification(title: "Enter Done", message: "\(circularRegion.identifier) You have entered the area.")
        }
    }
    
    // exit Area ve notification gonderimi
    public func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        if let circularRegion = region as? CLCircularRegion {
            sendNotification(title: "Exit Done", message: "\(circularRegion.identifier) You have left the area.")
        }
    }

    // notification gonderimi
    private func sendNotification(title: String, message: String) {
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = message
        content.sound = .default

        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: nil
        )

        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

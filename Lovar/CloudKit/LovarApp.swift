//
//  LovarApp.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI
import UIKit
import CloudKit

@main
struct LovarApp: App {
    @UIApplicationDelegateAdaptor(LovarAppDelegate.self) private var appDelegate

    static let vm = ViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(LovarApp.vm)
        }
    }
}

// For CloudKit....

final class LovarAppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        application.registerForRemoteNotifications()
        return true
    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        debugPrint("Did register for remote notifications")
    }

    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        debugPrint("ERROR: Failed to register for notifications: \(error.localizedDescription)")
    }

    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        guard let zoneNotification = CKNotification(fromRemoteNotificationDictionary: userInfo) as? CKRecordZoneNotification else {
            completionHandler(.noData)
            return
        }

        debugPrint("Received zone notification: \(zoneNotification)")

        Task {
            do {
                try await LovarApp.vm.fetchLatestChanges()
                completionHandler(.newData)
            } catch {
                debugPrint("Error in fetchLatestChanges: \(error)")
                completionHandler(.failed)
            }
        }
    }
}


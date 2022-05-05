//
//  ContentView.swift
//  eddiegaona-Amp-iOS-SDK
//
//  Created by Eddie Gaona on 2/8/22.
//

import SwiftUI
import Amplitude

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        Amplitude.instance().trackingSessionEvents = true
         // Initialize SDK
         Amplitude.instance().initializeApiKey("e83b7744445d8db2438876c9b0fcc328")
         // Set userId
         Amplitude.instance().setUserId("Eddie")
         // Log an event
         Amplitude.instance().logEvent("app_start")
        return true
    }
}

import SwiftUI

// Portrait = Compact width, regular height
// iPad = regular width, regular height
struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
        if isPortraitPhone || isIPad {
            // Portrait mode ?
            GreetingsView()
        } else {
            // Landscape mode ?
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}

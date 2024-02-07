import SwiftUI

// Portrait = Compact width, regular height
// iPad = regular width, regular height
struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
        if isPortraitPhone || isIPad {
            // Portrait mode ?
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(
                                language: $language,
                                layoutDirectionString: $layoutDirectionString
                            )
                        }
                    }
            }
        } else {
            // Landscape mode ?
            NavigationStack {
                LandscapeGreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(
                                language: $language,
                                layoutDirectionString: $layoutDirectionString
                            )
                        }
                    }
            }
        }
    }
}

#Preview {
    MainView(
        language: .constant("es"), 
        layoutDirectionString: .constant(LEFT_TO_RIGHT)
    )
}

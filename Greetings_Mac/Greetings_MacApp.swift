import SwiftUI

@main
struct Greetings_MacApp: App {
    @AppStorage("language") var language: String = "en"
    @AppStorage("layoutDirectionString") var layoutDirectionString: String = LEFT_TO_RIGHT
    
    var layoutDirection: LayoutDirection {
        layoutDirectionString == LEFT_TO_RIGHT
        ? .leftToRight
        : .rightToLeft
    }
    
    let resetTip = false
    
    var body: some Scene {
        WindowGroup {
            MainView(
                language: $language,
                layoutDirectionString: $layoutDirectionString
            )
            .environment(\.locale, Locale(identifier: language))
            .environment(\.layoutDirection, layoutDirection)
            .task {
                // Tips solo funciona en mac 14 o superior
//                if resetTip {
//                    // Resetea el counter de los tips y los vuelve a mostrar
//                    try? Tips.resetDatastore()
//                }
//                
//                // Este Tip son consejos de que hacer (estilo guide)
//                try? Tips.configure([
//                    .displayFrequency(.immediate),
//                    .datastoreLocation(.applicationDefault)
//                ])
            }
        }
    }
}

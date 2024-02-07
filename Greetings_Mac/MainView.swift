import SwiftUI

// Portrait = Compact width, regular height
// iPad = regular width, regular height
struct MainView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        NavigationStack {
            GreetingsView()
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        LanguageOptionsTapView(
                            language: $language,
                            layoutDirectionString: $layoutDirectionString
                        )
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

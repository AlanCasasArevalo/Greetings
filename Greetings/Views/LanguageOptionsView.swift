import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Image(systemName: "gearshape.circle.fill")
            .contextMenu {
                Button("English") {
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Spanish") {
                    language = "es"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Hebrew") {
                    language = "he"
                    layoutDirectionString = RIGHT_TO_LEFT
                }
                Button("Arabic") {
                    language = "ar"
                    layoutDirectionString = RIGHT_TO_LEFT
                }
            }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}

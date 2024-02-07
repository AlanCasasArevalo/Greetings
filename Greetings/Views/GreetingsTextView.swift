import SwiftUI

struct GreetingsTextView: View {
    @Binding var subtitle: LocalizedStringKey

    let subtitles : [LocalizedStringKey] = [
        LocalizedStringKey("Exploring iOS Programming"),
        LocalizedStringKey("Learning how to bake"),
        LocalizedStringKey("Programming recipes"),
        LocalizedStringKey("Walk to the dog")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(LocalizedStringKey("Greetings"))
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.thin)
        }
        .onTapGesture {
            // Change subtitle
            subtitle = subtitles.randomElement() ?? LocalizedStringKey("Exploring iOS Programming")
        }
    }
}

#Preview {
    GreetingsTextView(subtitle: .constant("Exploring iOS Programming"))
}

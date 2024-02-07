import SwiftUI

/// This is the title view of the app wich
/// displays a title, a subtitle, wich randomly changes on tap
/// and we have colorful disc wich rotates on tap and
/// that is amazing
struct TitleView: View {
    @State var subtitle: LocalizedStringKey = LocalizedStringKey("Exploring iOS Programming")
  
    var body: some View {
        HStack{
            GreetingsTextView(subtitle: $subtitle)
            Spacer()
            RotatableCircleView()
        }
    }
}


#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}

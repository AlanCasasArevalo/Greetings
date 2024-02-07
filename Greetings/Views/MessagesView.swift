import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(
            text: LocalizedStringKey("Hello there!"),
            color: .myGreen
        ),
        .init(
            text: LocalizedStringKey("Welcome!!"),
            color: .myGray
        ),
        .init(
            text: LocalizedStringKey("Ready!!"),
            color: .myPurple
        ),
        .init(
            text: LocalizedStringKey("Hi!!"),
            color: .myRed
        ),
        .init(
            text: LocalizedStringKey("Boom!!"),
            color: .myYellow
        )
    ]

    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}

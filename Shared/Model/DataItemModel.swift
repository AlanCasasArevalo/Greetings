import SwiftUI

struct DataItemModel: Identifiable {
    let id: UUID = UUID()
    let text: LocalizedStringKey
    let color: Color
}

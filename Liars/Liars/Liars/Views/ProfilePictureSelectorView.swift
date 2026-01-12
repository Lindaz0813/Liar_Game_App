import SwiftUI

struct ProfilePictureSelectorView: View {
    @Binding var selectedIcon: String
    @Environment(\.dismiss) private var dismiss
    
    let columns = [
        GridItem(.adaptive(minimum: 60))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(ProfilePicture.emojis, id: \.self) { emoji in
                        Button(action: {
                            selectedIcon = emoji
                            dismiss()
                        }) {
                            Text(emoji)
                                .font(.system(size: 50))
                                .frame(width: 60, height: 60)
                                .background(
                                    Circle()
                                        .fill(selectedIcon == emoji ? Color.blue.opacity(0.1) : Color.clear)
                                )
                                .overlay(
                                    Circle()
                                        .stroke(selectedIcon == emoji ? Color.blue : Color.clear, lineWidth: 2)
                                )
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Select Profile Picture")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SenderView: View {
    var user: User
    var body: some View {
        Button {
            
        } label: {
            
        VStack {
            Image(user.image)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(.circle)
            Text(user.name).font(type: .regular, size: 16).foregroundStyle(.white)
        }
        }
    }
}
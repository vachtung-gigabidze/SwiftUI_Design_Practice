struct User: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let image: String
    
    static var mockData: [User] {
        [
            User(name: "James", image: "ava"),
            User(name: "Blake", image: "ava"),
            User(name: "Juke", image: "ava"),
            User(name: "John", image: "ava"),
            User(name: "Demian", image: "ava")
        ]
    }
}
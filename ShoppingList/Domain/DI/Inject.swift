@propertyWrapper
struct Inject<T> {

    private let keyPath: WritableKeyPath<DIContainer, T?>

    var wrappedValue: T {
        // swiftlint:disable force_unwrapping
        get { DIContainer.shared[keyPath: keyPath]! }
        // swiftlint:enable force_unwrapping
        set { DIContainer.shared[keyPath: keyPath] = newValue }
    }

    init(_ keyPath: WritableKeyPath<DIContainer, T?>) {
        self.keyPath = keyPath
    }
}

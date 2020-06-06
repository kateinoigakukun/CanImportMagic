#if canImport(BasicA)
import BasicA
public typealias Component = BasicA.Component
#elseif canImport(BasicB)
import BasicB
public typealias Component = BasicB.Component
#endif

struct LibraryX {
    var text = "Hello, World!"
}

#if canImport(BasicA) || canImport(BasicB)
public func constructComponent() -> Component {
    return Component()
}
public func useComponent(_ component: Component) {
    print(component)
}
#endif

import AppKit

extension NSScreen {
    var hasTopNotchDesign: Bool {
        return safeAreaInsets.top != 0
    }
}

@main
struct TopNotchTool {
    static func main() {
        if NSScreen.screens.count < 1 {
            exit(2)
        } else if NSScreen.screens.contains(where: { $0.hasTopNotchDesign }) {
            exit(EXIT_SUCCESS)
        } else {
            exit(EXIT_FAILURE)
        }
    }
}

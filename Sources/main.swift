import AppKit

extension NSScreen {
    var hasTopNotchDesign: Bool {
        return safeAreaInsets.top != 0
    }
    static var hasNotchedScreen: Bool {
        return screens.contains { $0.hasTopNotchDesign }
    }
}

let NO_SCREENS = EXIT_FAILURE + 1

@main
struct TopNotchTool {
    static func main() {
        if NSScreen.screens.isEmpty {
            exit(NO_SCREENS)
        } else if NSScreen.hasNotchedScreen {
            exit(EXIT_SUCCESS)
        } else {
            exit(EXIT_FAILURE)
        }
    }
}

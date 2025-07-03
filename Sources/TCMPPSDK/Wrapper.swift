import Foundation

public class Wrapper {
    public static func resourceURL(named name: String) -> URL? {
        return Bundle.module.url(forResource: name, withExtension: nil)
    }
}

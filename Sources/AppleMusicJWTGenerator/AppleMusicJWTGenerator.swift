import Foundation
import ArgumentParser

struct AppleMusicJWTGenerator: ParsableCommand {
    
    static let configuration = CommandConfiguration(abstract: "A Swift command-line tool to generate JWT for Apple Music API", subcommands: [Generate.self])
    
    init() { }
}

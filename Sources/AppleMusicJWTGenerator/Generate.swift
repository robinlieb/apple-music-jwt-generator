import Foundation
import ArgumentParser
import AppleMusicJWT

struct Generate: ParsableCommand {
    
    public static let configuration = CommandConfiguration(abstract: "Generate a JWT for Apple Music API from the given input")
    
    @Argument(help: "10-character Team ID, obtained from your developer account.")
    private var teamId: String
    
    @Argument(help: "10-character key identifier (kid), obtained from your developer account.")
    private var keyId: String
    
    @Argument(help: "Path to your P8 MusicKit private key file.")
    private var keyFileUrl: String
    
    @Option(name: .shortAndLong, help: "Expiration time in seconds. This value should not be greater than 15777000. If omitted default of 30 days is applied")
    private var exp: TimeInterval?
    
    
    func run() throws {
        
        guard let token = AppleMusicJWT().generateToken(teamId: teamId, keyId: keyId, keyFileUrl: URL(fileURLWithPath: keyFileUrl), exp: exp ?? 60 * 60 * 24 * 30) else {
            return
        }
        print(token)
    }
}

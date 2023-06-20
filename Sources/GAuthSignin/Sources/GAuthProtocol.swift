import Foundation

public protocol GAuthProtocol {
    func getGAuthTokenResponseClosure(
        code: String,
        clientId: String,
        clientSecret: String,
        redirectUri: String,
        completion: @escaping (Result<TokenResponse, GAuthError>) -> Void
    )

    func getGAuthCodeResponseClosure(
        email: String,
        password: String,
        completion: @escaping (Result<String, GAuthError>) -> Void
    )

    func patchGAuthTokenResponseClosure(
        refreshToken: String,
        completion: @escaping (Result<TokenResponse, GAuthError>) -> Void
    )

    func getGAuthUserInfoResponseClosure(
        accessToken: String,
        _ completion: @escaping (Result<UserInfoResponse, GAuthError>) -> Void
    )

    
}

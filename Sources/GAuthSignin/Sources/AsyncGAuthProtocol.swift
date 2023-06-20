import Foundation

public protocol AsyncGAuthProtocol {
    func getGAuthTokenResponse(
        code: String,
        clientId: String,
        clientSecret: String,
        redirectUri: String
    ) async throws -> Result<TokenResponse, GAuthError>

    func getGAuthCodeResponse(
        email: String,
        password: String
    ) async throws -> Result<String, GAuthError>

    func patchGAuthTokenResponse(
        refreshToken: String
    ) async throws -> Result<TokenResponse, GAuthError>

    func getGAuthUserInfoResponse(
        accessToken: String
    ) async throws -> Result<UserInfoResponse, GAuthError>
}

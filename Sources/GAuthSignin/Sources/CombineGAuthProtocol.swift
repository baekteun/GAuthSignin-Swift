import Combine

public protocol CombineGAuthProtocol {
    func getGAuthTokenResponsePublisher(
        code: String,
        clientId: String,
        clientSecret: String,
        redirectUri: String
    ) -> AnyPublisher<Result<TokenResponse, GAuthError>, Error>

    func getGAuthCodeResponsePublisher(
        email: String,
        password: String
    ) -> AnyPublisher<Result<String, GAuthError>, Error>

    func patchGAuthTokenResponsePublisher(
        refreshToken: String
    ) -> AnyPublisher<Result<TokenResponse, GAuthError>, Error>

    func getGAuthUserInfoResponsePublisher(
        accessToken: String
    ) -> AnyPublisher<Result<UserInfoResponse, GAuthError>, Error>
}

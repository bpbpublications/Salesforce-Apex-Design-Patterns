// Concrete Single Sign-On (SSO) Authentication Provider Factory
public class SSOAuthProviderFactory implements AuthProviderFactory {
    public AuthenticationProvider createAuthProvider() {
        return new SSOAuthProvider();
    }
}
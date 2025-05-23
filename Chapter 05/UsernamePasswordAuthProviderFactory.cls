// Concrete Username/Password Authentication Provider Factory
public class UsernamePasswordAuthProviderFactory implements AuthProviderFactory {
    public AuthenticationProvider createAuthProvider() {
        return new UsernamePasswordAuthProvider();
    }
}
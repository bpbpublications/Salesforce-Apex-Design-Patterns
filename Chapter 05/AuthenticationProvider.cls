// Abstract Authentication Provider interface
public interface AuthenticationProvider {
    Boolean authenticate(String username, String password);
}
// Concrete flyweight class representing a tree type
public class TreeType implements Tree {
    private String type;
    private String texture;

    public TreeType(String type, String texture) {
        this.type = type;
        this.texture = texture;
    }

    public void render(int x, int y) {
        System.debug('Rendering ' + type + ' tree with texture ' + texture + ' at position (' + x + ', ' + y + ')');
        // Actual rendering logic here
    }
}
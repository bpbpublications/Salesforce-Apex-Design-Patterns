// Concrete flyweight implementation class
public class TreeImpl implements Tree {
    private TreeType type;
    private int x;
    private int y;

    public TreeImpl(TreeType type, int x, int y) {
        this.type = type;
        this.x = x;
        this.y = y;
    }

    public void render(int x, int y) {
        type.render(x, y);
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }
}
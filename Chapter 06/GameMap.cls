// Client class
public class GameMap {
    private List<Tree> trees = new List<Tree>();

    public void addTree(int x, int y, String type, String texture) {
        TreeType treeType = TreeFactory.getTreeType(type, texture);
        Tree tree = new TreeImpl(treeType, x, y);
        trees.add(tree);
    }

    public void render() {
        for (Tree tree : trees) {
            tree.render(tree.getX(), tree.getY());
        }
    }
}
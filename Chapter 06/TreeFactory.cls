// Flyweight factory class
public class TreeFactory {
    private static Map<String, TreeType> treeTypes = new Map<String, TreeType>();

    public static TreeType getTreeType(String type, String texture) {
        String key = type + '-' + texture;
        if (!treeTypes.containsKey(key)) {
            treeTypes.put(key, new TreeType(type, texture));
        }
        return treeTypes.get(key);
    }
}
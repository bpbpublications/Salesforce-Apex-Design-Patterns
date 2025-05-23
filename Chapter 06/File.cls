// Leaf class representing files
public class File implements Document {
    private String name;
    private Integer size;

    public File(String name, Integer size) {
        this.name = name;
        this.size = size;
    }

    public Integer getSize() {
        return size;
    }
}
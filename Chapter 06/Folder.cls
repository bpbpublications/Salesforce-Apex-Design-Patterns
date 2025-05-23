// Composite class representing folders (collections of subfolders and/or files)
public class Folder implements Document {
    private String name;
    private List<Document> contents;

    public Folder(String name) {
        this.name = name;
        this.contents = new List<Document>();
    }

    public void addDocument(Document document) {
        contents.add(document);
    }

    public void removeDocument(Document document) {
        contents.remove(document);
    }

    public Integer getSize() {
        Integer totalSize = 0;
        for(Document doc : contents) {
            totalSize += doc.getSize();
        }
        return totalSize;
    }
}
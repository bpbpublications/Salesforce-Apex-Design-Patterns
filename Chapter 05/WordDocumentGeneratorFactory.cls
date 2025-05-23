// Concrete Word Document Generator Factory
public class WordDocumentGeneratorFactory implements DocumentGeneratorFactory {
    public DocumentGenerator createDocumentGenerator() {
        return new WordDocumentGenerator();
    }
}
// Concrete PDF Document Generator Factory
public class PdfDocumentGeneratorFactory implements DocumentGeneratorFactory {
    public DocumentGenerator createDocumentGenerator() {
        return new PdfDocumentGenerator();
    }
}
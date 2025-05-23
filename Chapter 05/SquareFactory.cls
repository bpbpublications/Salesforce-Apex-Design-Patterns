public class SquareFactory extends ShapeFactory {
    public override Shape createShape() {
        return new Square();
    }
}
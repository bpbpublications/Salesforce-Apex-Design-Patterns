public class CircleFactory extends ShapeFactory {
    public override Shape createShape() {
        return new Circle();
    }
}
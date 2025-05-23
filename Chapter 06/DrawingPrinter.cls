// ConcreteImplementorB class
public class DrawingPrinter implements DrawingAPI {
    public void drawCircle(Integer x, Integer y, Integer radius) {
        System.debug('Printing circle at (' + x + ',' + y + ') with radius ' + radius);
    }

    public void drawSquare(Integer x, Integer y, Integer side) {
        System.debug('Printing square at (' + x + ',' + y + ') with side ' + side);
    }
}
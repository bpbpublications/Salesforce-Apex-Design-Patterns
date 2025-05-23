// ConcreteImplementorA class
public class DrawingCanvas implements DrawingAPI {
    public void drawCircle(Integer x, Integer y, Integer radius) {
        System.debug('Drawing circle on canvas at (' + x + ',' + y + ') with radius ' + radius);
    }

    public void drawSquare(Integer x, Integer y, Integer side) {
        System.debug('Drawing square on canvas at (' + x + ',' + y + ') with side ' + side);
    }
}
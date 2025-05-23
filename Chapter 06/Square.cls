// RefinedAbstraction class
public class Square implements Shape {
    private Integer x, y, side;
    private DrawingAPI drawingAPI;

    public Square(Integer x, Integer y, Integer side, DrawingAPI drawingAPI) {
        this.x = x;
        this.y = y;
        this.side = side;
        this.drawingAPI = drawingAPI;
    }

    public void draw() {
        drawingAPI.drawSquare(x, y, side);
    }
}
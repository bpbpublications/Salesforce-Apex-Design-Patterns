// RefinedAbstraction class
public class Circle implements Shape {
    private Integer x, y, radius;
    private DrawingAPI drawingAPI;

    public Circle(Integer x, Integer y, Integer radius, DrawingAPI drawingAPI) {
        this.x = x;
        this.y = y;
        this.radius = radius;
        this.drawingAPI = drawingAPI;
    }

    public void draw() {
        drawingAPI.drawCircle(x, y, radius);
    }
}
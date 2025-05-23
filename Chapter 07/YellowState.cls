public class YellowState implements TrafficLightState {
    public void handleRequest(TrafficLight light) {
        // Change state to green
        light.setState(new GreenState());
    }
}
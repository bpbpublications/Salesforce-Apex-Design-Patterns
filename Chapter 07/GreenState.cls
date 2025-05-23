public class GreenState implements TrafficLightState {
    public void handleRequest(TrafficLight light) {
        // Change state to red
        light.setState(new RedState());
    }
}
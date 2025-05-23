public class RedState implements TrafficLightState {
    public void handleRequest(TrafficLight light) {
        // Change state to yellow
        light.setState(new YellowState());
    }
}
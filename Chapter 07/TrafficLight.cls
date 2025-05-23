public class TrafficLight {
    private TrafficLightState state;

    public TrafficLight() {
        this.state = new RedState(); // Initial state is red
    }

    public void setState(TrafficLightState state) {
        this.state = state;
    }

    public void handleRequest() {
        state.handleRequest(this);
    }
}
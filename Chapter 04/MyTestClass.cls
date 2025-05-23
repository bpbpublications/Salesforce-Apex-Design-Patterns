@isTest
public class MyTestClass {
    @isTest
    public static void calculateTotalPrice_WithValidInput_ReturnsTotalPrice(){
        Decimal totalPrice = MyService.calculateTotalPrice(5, 10.0);
        System.assertEquals(50.0, totalPrice);
    }
}

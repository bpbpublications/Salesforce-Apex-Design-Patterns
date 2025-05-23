public class CustomValidationException extends CustomException {

    try {
        if (condition) {
            throw new CustomValidationException('Validation failed');
        }
    } catch (CustomValidationException e) {
        System.debug('Custom validation error: ' + e.getMessage());
    }
}
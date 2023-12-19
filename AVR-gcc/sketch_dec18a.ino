#include <avr/io.h>
#include <stdbool.h>

#define LED_PIN 1 // Assuming the LED is connected to PB1

int main(void) {
    // Set PB1 as an output
    DDRB |= (1 << LED_PIN);

    while (1) {
        // XOR operation on x and y
        bool result = (0^1)== 1;

        // Set the LED state based on the result
        if (result) {
            PORTB |= (1 << LED_PIN); // Turn on LED
        } else {
            PORTB &= ~(1 << LED_PIN); // Turn off LED
        }
    }

    return 0;
}

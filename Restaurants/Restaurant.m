//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"

@implementation Restaurant

-(float) priceOfDinnerForGuests:(int)numberOfGuests
{
    float entreePrice = 22.50;
    float appetizerPrice = 11.00;
    float dessertPrice = 5.50;
    float winePrice = 34.25;
    
    //int numberOfGuests = 6;
    
    float taxRate = .0875;
    float tipRate = .2;
    
    //These variables will be replaced by calculated amounts based on the above
    float dinnerPrice = 0.0;
    float tip = 0.0;
    float taxes = 0.0;
    int numberOfAppetizersOrdered = 0;
    int numberOfDessertsOrdered = 0;
    int numberOfEntreesOrdered = 0;
    int numberOfWineBottlesOrdered = 0;
    
    numberOfEntreesOrdered = numberOfGuests;
    numberOfAppetizersOrdered = numberOfGuests / 2;
    numberOfDessertsOrdered = numberOfGuests;
    numberOfWineBottlesOrdered = ceil( ((float) numberOfGuests) / 4.0);
    
    dinnerPrice = (entreePrice * numberOfEntreesOrdered) + (appetizerPrice * numberOfAppetizersOrdered) + (dessertPrice * numberOfDessertsOrdered) + (winePrice * numberOfWineBottlesOrdered);
                                                                                                                                                      
    tip = tipRate * dinnerPrice;
    taxes = taxRate * dinnerPrice;
    
    float totalDinnerPrice = dinnerPrice + tip + taxes ;
    
    /* Set dinnerPrice to be the cost of:
        1 entree per person
        1 dessert per person
        1 appetizer for every 2 people 
        1 bottle of wine for every 4 people. 
     
     Make sure to also calculate the tax and tip correctly, and feel free to use the numberOfXXXXXOrdered variables to help with your calculations;
     */
    
    // *********************   
    // Your code goes here
    // *********************
    
    
    // Print the dinner price
    NSLog(@"number of Wine Bottles is now %d", numberOfWineBottlesOrdered);
    NSLog(@"Dinner for a family of %d costs $%.2f. The tip should be $%.2f and the taxes will be $%.2f. The total dinner price will be $%.2f", numberOfGuests, dinnerPrice, tip, taxes, totalDinnerPrice);
    return dinnerPrice;
    
}

- (id)init {
    self = [super init];
    if (self) {
        float priceForFamily1 = [self priceOfDinnerForGuests:4];
        float priceForFamily2 = [self priceOfDinnerForGuests:3];
        float priceForFamily3 = [self priceOfDinnerForGuests:6];
        float priceForFamily4 = [self priceOfDinnerForGuests:5];
        float priceForFamily5 = [self priceOfDinnerForGuests:2];
        float priceForFamily6 = [self priceOfDinnerForGuests:4];
        float priceForFamily7 = [self priceOfDinnerForGuests:3];
        float priceForFamily8 = [self priceOfDinnerForGuests:4];
        float priceForFamily9 = [self priceOfDinnerForGuests:5];
        float priceForFamily10 = [self priceOfDinnerForGuests:5];
        NSLog(@"total price for 10 tables is $%.2f", priceForFamily1+priceForFamily2+priceForFamily3+priceForFamily4+priceForFamily5+priceForFamily6+priceForFamily7+priceForFamily8+priceForFamily9+priceForFamily10);
    }
    return self;
}

@end

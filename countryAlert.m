//
//  countryAlert.m
//  SXEas
//
//  Created by Evan Matthew on 23/2/2568 BE.
//

#import "countryAlert.h"

@implementation countryAlert

- (void)createCountryAlertWithArguments:(nonnull NSString *)title message:(nonnull NSString *)message {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    

    // Add Ok button with action logic inside the handler
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Dismiss"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                         // Action logic goes here
                                                     }];
    [alert addAction:okAction];

    // Present the alert from the current view controller
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    [rootViewController presentViewController:alert animated:YES completion:nil];
    
    
    
    
}

@end

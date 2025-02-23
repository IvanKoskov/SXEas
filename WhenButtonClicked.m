//
//  WhenButtonClicked.m
//  SXEas
//
//  Created by Evan Matthew on 22/2/2568 BE.
//
#import "WhenButtonClicked.h"

@implementation WhenButtonClicked

- (void)showMessageBoxWithTitle:(nonnull NSString *)title message:(nonnull NSString *)message {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:message
                                                            preferredStyle:UIAlertControllerStyleAlert];

    // Add Cancel button
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                           style:UIAlertActionStyleCancel
                                                         handler:nil];
    [alert addAction:cancelAction];

    // Add Ok button with action logic inside the handler
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Ok, Agree"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
        UIAlertController *alertThanks = [UIAlertController alertControllerWithTitle:@"Done!"
                                                                            message:@"Proceed..."
                                                                     preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *goAction = [UIAlertAction actionWithTitle:@"Done"
                                                           style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                             // Perform any action you want after "Done" is clicked
                                                         }];
        [alertThanks addAction:goAction];
        
        // Present the second alert from the current view controller
        UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
        [rootViewController presentViewController:alertThanks animated:YES completion:nil];
    }];
    [alert addAction:okAction];

    // Present the first alert from the current view controller
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    [rootViewController presentViewController:alert animated:YES completion:nil];
}

@end

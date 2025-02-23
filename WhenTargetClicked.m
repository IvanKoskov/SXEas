//
//  WhenTargetClicked.m
//  SXEas
//
//  Created by Evan Matthew on 22/2/2568 BE.
//

#import "WhenTargetClicked.h"

@implementation WhenTargetClicked

- (void)showTargetMessageBoxWithTitle:(nonnull NSString *)title message:(nonnull NSString *)message {
  
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                       message:message
                                                                preferredStyle:UIAlertControllerStyleAlert];

        // Add Cancel button
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                               style:UIAlertActionStyleCancel
                                                             handler:nil];
        [alert addAction:cancelAction];

        // Add Ok button with action logic inside the handler
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Proceed!"
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

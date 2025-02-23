//
//  countryAlert.h
//  SXEas
//
//  Created by Evan Matthew on 23/2/2568 BE.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface countryAlert : NSObject
-(void)createCountryAlertWithArguments:(nonnull NSString *)title message:(nonnull NSString *)message;
@end

NS_ASSUME_NONNULL_END

/*
 
 let alert = countryAlert()
               alert.createCountryAlertWithArguments:(withTitle: "Before dox.", message: "Do you want to proceed?😭")
 
 */

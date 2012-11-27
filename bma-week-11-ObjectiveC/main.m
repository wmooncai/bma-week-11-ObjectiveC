//
//  main.m
//  bma-week-11-ObjectiveC
//
//  Created by W. Mooncai on 11/27/12.
//  Copyright (c) 2012 W. Mooncai. All rights reserved.
//

/*
 
 Organizer - Date object - see how multiple args work - order? (it mattered in class)
 
 + Challenge Exercises: 12, 13, 14
 + Read Ch 17 - 25
 
 */

#import <Foundation/Foundation.h>
#import "bma-week-11-ObjectiveC.h"

void BigNerdRanch_Ch12()
{
    NSDateComponents *myBDayComps = [[NSDateComponents alloc] init];
    [myBDayComps setYear:1971];
    [myBDayComps setMonth:7];
    [myBDayComps setDay:12];
    [myBDayComps setHour:14];
    [myBDayComps setMinute:14];
    [myBDayComps setSecond:14];
    
    NSCalendar *cal = [[NSCalendar alloc]
                       initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *myDoB = [cal dateFromComponents:myBDayComps];
    
    NSDate *now = [NSDate date];
    
    double diff = [now timeIntervalSinceDate:myDoB];
    
    NSLog(@"\n\nBNR Chapter 12\n\nCurrent Date: %@\n      My DoB: %@\nAge (units):\n  - Seconds: %f\n  - Minutes: %f\n  -   Hours: %f\n  -    Days: %f\n  -   Years: %f\n\n"
          , now, myDoB, diff
          , (diff / 60)
          , (diff / (60 * 60))
          , (diff / (60 * 60 * 24))
          , (diff / (60 * 60 * 24 * 365)));
}

void BigNerdRanch_Ch13()
{
    NSTimeZone *tZone = [NSTimeZone systemTimeZone];
    
    NSLog(@"\n\nBNR Chapter 13\n\n       Time Zone: %@\nDaylight Savings: %s\n\n"
          , [tZone name], ([tZone isDaylightSavingTime]) == 0 ? "Yes" : "No");
}

void BigNerdRanch_Ch14()
{
    NSHost *myHost = [NSHost currentHost];
    
    NSLog(@"\n\nBNR Chapter 14\n\nThis host name: %@"
          , [myHost localizedName]);
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        BigNerdRanch_Ch12();
        
        BigNerdRanch_Ch13();
        
        BigNerdRanch_Ch14();
    }
    return 0;
}


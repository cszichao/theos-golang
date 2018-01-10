#include "main.h"

#import <Foundation/Foundation.h>
#include <CoreFoundation/CoreFoundation.h>

int main(int argc, char **argv, char **envp) {
    //create a fake "Info.plist" for cgo
	NSDictionary *emptyDict = [[NSDictionary alloc] init];
    NSString *fakeInfoPlistFilename = @"Info.plist";
    [emptyDict writeToFile:fakeInfoPlistFilename atomically:YES];
    [emptyDict release];
	return ExportMainObjectiveC(argc, argv, envp);
}

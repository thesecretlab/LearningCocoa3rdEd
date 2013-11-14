//
//  SampleDocument.m
//  iOSDocuments
//
//  Created by Tim Nugent on 5/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import "SampleDocument.h"

@implementation SampleDocument


- (BOOL)loadFromContents:(id)contents ofType:(NSString *)typeName
				   error:(NSError *__autoreleasing *)outError
{
	// Cast the contents variable to an NSData, for convenience
	NSData* data = contents;
	if ([data length] > 0)
	{
		// The file isn't empty, so create a string from its contents
		self.text = [[NSString alloc] initWithData:data
										  encoding:NSUTF8StringEncoding];
	}
	else
	{
		self.text = @"";
	}
	return YES;
}

// Called when the system needs a snapshot of the current state of the document, for autosaving.
- (id)contentsForType:(NSString *)typeName
				error:(NSError *__autoreleasing *)outError
{
	if (self.text == nil)
		self.text = @"";
	return [self.text dataUsingEncoding:NSUTF8StringEncoding];
}

@end

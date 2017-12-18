//
//  FBCustomPreviewController.m
//  FileBrowser
//
//  Created by Steven Troughton-Smith on 29/09/2014.
//  Copyright (c) 2014 High Caffeine Content. All rights reserved.
//

#import "FBCustomPreviewController.h"

NSString *filepath;

@implementation FBCustomPreviewController

- (instancetype)initWithFile:(NSString *)file
{
	self = [super init];
	if (self) {
		
		textView = [[UITextView alloc] initWithFrame:[UIScreen mainScreen].bounds];
		textView.editable = YES;
		textView.backgroundColor = [UIColor whiteColor];
		
		imageView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
		imageView.contentMode = UIViewContentModeScaleAspectFit;
		
		imageView.backgroundColor = [UIColor whiteColor];

		[self loadFile:file];

	}
	return self;
}

+(BOOL)canHandleExtension:(NSString *)fileExt
{
    NSLog(@"fileExt %@", fileExt);
    
//	if ((int)UI_USER_INTERFACE_IDIOM() != 4) // Don't use QuickLook for images on watchOS
	//	return ([fileExt isEqualToString:@"txt"] || [fileExt isEqualToString:@"plist"] || [fileExt isEqualToString:@"strings"] || [fileExt isEqualToString:@"xcconfig"] );

	return ([fileExt isEqualToString:@"txt"] || [fileExt isEqualToString:@"plist"] || [fileExt isEqualToString:@"strings"] || [fileExt isEqualToString:@"png"] || [fileExt isEqualToString:@"xcconfig"] || [fileExt isEqualToString:@"xml"] || [fileExt isEqualToString:@""]);
}

-(void)loadFile:(NSString *)file
{
    filepath = [file copy];
    
	if ([file.pathExtension isEqualToString:@"plist"] || [file.pathExtension isEqualToString:@"strings"] || [file.pathExtension isEqualToString:@"xml"] || [file.pathExtension isEqualToString:@""])
	{
		//NSDictionary *d = [NSDictionary dictionaryWithContentsOfFile:file];
		//[textView setText:[d description]];
        NSString *content = [NSString stringWithContentsOfFile:file
                                              encoding:NSUTF8StringEncoding
                                                 error:NULL];
        [textView setText:content];
        self.view = textView;
	}
	else if ([file.pathExtension isEqualToString:@"xcconfig"])
	{
		NSString *d = [NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:nil];
		[textView setText:d];
		self.view = textView;
	}
	else
	{
		imageView.image = [UIImage imageWithContentsOfFile:file];
		self.view = imageView;
	}
	
	self.title = file.lastPathComponent;
    UIBarButtonItem *savebtn = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:@selector(saveFile)];
    [self.navigationItem setLeftBarButtonItem:savebtn];
    [self.navigationController setToolbarHidden:NO];
    
}

-(void)saveFile {
    //NSLog(@"HELLO");
    NSLog(@"file: %@", filepath);
    NSLog(@"new content: %@", textView.text);
    
    NSError *error;
    [textView.text writeToFile:filepath atomically:YES encoding:NSUTF8StringEncoding error:&error];
    if (error)
        NSLog(@"error saving %@", error);
    
}

@end

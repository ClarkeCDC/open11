#import <spawn.h>
#import <objc/runtime.h>
#import <MobileCoreServices/LSApplicationWorkspace.h>

int main(int argc, char **argv, char **envp) {

    if (argc < 2) {
        fprintf(stderr, "Usage: %s com.application.identifier \n", argv[0]);
        return -1;
    }
    
	NSString* identifier = [NSString stringWithFormat:@"%s" , argv[1]];
    if([[LSApplicationWorkspace defaultWorkspace] applicationIsInstalled:identifier]){
        [[LSApplicationWorkspace defaultWorkspace] openApplicationWithBundleID:identifier];
    }else{
        fprintf(stderr, "Couldn't open application: Application is not installed");
        return -1;
    }
    return 0;
}

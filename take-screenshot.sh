# wait for me to minimize windows
sleep 1

# take screenshot
screencapture "./screenshot.jpg"

# compress screenshot
imagew screenshot.jpg screenshot.jpg -opt jpeg:quality=70

# confirm success
say "Screenshot Successful"

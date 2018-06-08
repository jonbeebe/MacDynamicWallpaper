# Dynamic Wallpaper for macOS

This project contains an AppleScript that allows macOS earlier than 10.14 to have Mojave-style dynamic wallpapers. It's not as accurate (and images don't change seamlessly), but it works and is better than nothing! Tested on 10.13 (High Sierra).

The script is a modified version of an older script created by [Philip Hutchinson](https://pipwerks.mit-license.org):
[https://github.com/pipwerks/OS-X-Wallpaper-Changer]()

## Time of Day

The 16 images correspond to the following times of day:

1. 5am - 6am
2. 6am - 9am
3. 9am - 12pm
4. 12pm - 2pm
5. 2pm - 3pm
6. 3pm - 4pm
7. 4pm - 5pm
8. 5pm - 6pm
9. 6pm - 7pm
10. 7pm - 8pm
11. 8pm - 9pm
12. 9pm - 10pm
13. 10pm - 11pm
14. 11pm - 12am
15. 12am - 1am
16. 1am - 5am

## Instructions

1. [Aquire](https://www.cultofmac.com/553577/grab-all-16-macos-mojave-dynamic-wallpapers-right-here/) the 16 images that make up the Mojave desktop wallpaper states. These images are not distributed as part of this repository.
2. Place each image, one per folder, in the corresponding `Wallpapers/Time of Day/mojave_dynamic_*` folder (e.g. "mojave_dynamic_1", "mojave_dynamic_2", and so on, all the way up to 16).
3. Move or copy the Wallpapers folder to your `$HOME/Pictures/` folder.
4. If you changed any of the paths or folder names, you'll need to manually update the script.
5. Run the script automatically at an interval (e.g. every 30 minutes) using software such as [Lingon](https://www.peterborgapps.com/lingon/) (recommended) or manually using [Launch Daemons and Agents](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html).

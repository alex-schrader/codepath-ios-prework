# Pre-work - Money Monkey

Money Monkey is a tip calculator application for iOS.

Submitted by: Alexander Schrader

Time spent: 6 hours spent in total

## User Stories

The following **required** functionality is complete:

* [Y] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [Y] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [Y] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:
 - Added an image of a monkey that changes depending on whether a bill has been entered
 - Settings page
 - dark mode

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<src='https://i.imgur.com/K0N4z0j.gif' title='Money MonkeyVideo Walkthrough' width='' alt='Video Walkthrough' />
![](preworkgif.gif)
GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.
Inserting and changing the monkey image was difficult, but I was able to figure it out after consulting a lot with stack overflow. Another difficulty was saving data to the user defaults. I eventually realized that it was because I didn't use the defaults.synchronize call, which I felt a little embarassed about. 

## License

    Copyright [2021] [Alexander Schrader]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
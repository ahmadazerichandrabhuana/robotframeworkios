# Test Automation for iOS Apps using Robot Framework

This is a sample Test Automation for iOS Apps using [Robot Framework](https://robotframework.org/) with Appium Library inside it.

> [!NOTE]  
> I can only try this code on MacOS, since it needs XCode. Not sure it can be used on Windows/Linux or not. Seems too complicated, IMHO.

## Requirements

1. Install [VS Code](https://code.visualstudio.com/) or any Code Editor you're comfort with.
2. Install [python](https://www.python.org/), preferably version **3.9.10** (that's the one I used and having no issue).
3. Make sure `pip` also installed together with python. If it is not automatically installed, refer to [Python Crash Course](https://ehmatthes.github.io/pcc/chapter_12/installing_pip.html).
4. Update python to your PATH file. Refer [here](https://realpython.com/add-python-to-path/), this website covered configuration for Windows, Linux, and MacOS. Or, if you prefer using python version management tools, refer to [this article](https://medium.com/@zorozeri/how-to-install-pyenv-and-manage-pythonversion-on-your-local-machine-241b119b7ae9) for using [pyenv](https://github.com/pyenv/pyenv).
5. Download and open this code repository on your local Code Editor and run this commands :
   ```
   pip install -r requirements.txt
   ```
6. Install [JDK](https://www.oracle.com/java/technologies/downloads/), and update JAVA_HOME to your PATH file. You can refer [here](https://medium.com/@zorozeri/setting-up-java-home-5abae0118bfe) or Google it.
7. Install [XCode](https://apps.apple.com/us/app/xcode/id497799835?mt=12), and XCode Command Line Tools (`xcode-select --install`).
8. Install [Node](https://nodejs.org/en/download/package-manager).
9. Install [Appium](https://appium.io/docs/en/2.2/quickstart/install/) and install appium driver `xcuitest`.
10. Install and run [appium-doctor](https://www.npmjs.com/package/appium-doctor) to make sure all your appium's dependencies are OK, trouble shoot if any red "x" appears (you need to google it yourself). But for iOS-specific usage, if the error is Android-related issues, they can be ignored.
11. Download and install this [Demo Apps](https://github.com/saucelabs/my-demo-app-rn/releases) into your iOS Device (`.ipa` file) or iOS Simulator (`.zip` file, extract and put the extracted file into iOS Simulator). Credit to [Wim Selles](https://github.com/wswebcreation).

## Device Connection

Connect your device to your computer, or open iOS Simulator, and check it's udid (or `identifier`) from XCode (Open XCode go to menu `Window` then choose `Device and Simulators`). 

Put the udid/identifier on file `env.yaml` line 7 : 
```
udid: {your device udid}
sample : 
udid: 7XXDXXXX-FXXX-XX9X-8XXX-XXXXCXXXFXXX
```

## Run Tests
* Run all tests : 
   ```
   robot tests
   ```

* Run specific test : 
   ```
   robot tests/{test file name using extension ".robot"}
   sample :
   robot tests/001.robot
   ```

## Open Test Report
    open report.html
   Or just drag and drop file `report.html` into your Browser.

## Open Test Log
    open log.html
   Or just drag and drop file `log.html` into your Browser.

## Short Repository Explanation

This sample Test Automation consists of 3 main folders : 

* config
   ```
   Contains basic configuration of Variables, Settings, and Keyword wich will be used globally on this whole project
   ```
* resources
   ```
   Consists of 3 more folders :
   > helpers  : contains any action which might be used globally on any pages
   > locators : contains web element for each specific web pages
   > pages    : contains actions which will be performed on each specific web pages
   ```
* tests
   ```
   Contains test cases
   ```

Apart from these 3 folders, this sample also using `env.yaml` file to store configuration-specific data.

## Appium Library Keywords Documentation

https://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html


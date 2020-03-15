# SVR Automation Project
This project has the goal of automate Inmetrics test with structure using Cucumber in Ruby, also has
implementation of the design pattern page objects with an example feature of Login.

The project uses BDD to write test scenarios and it's structure was constructed to be similar with Cucumber implementation.

## Requirements

You'll need to install the following:
- Chrome Webdriver
- Ruby >= 2.4
    * Gem bundler
- Cucumber >= 3.10
- Git

## Installation
You should install chrome webdriver, there are different methods to install it for each OS.
```Windows
Download the correct webdriver version and leave it on C:\Windows folder
```

```Mac OS
$ brew install chromedriver
```

```Linux
Download the correct webdriver version and leave it on /usr/local/bin folder
```


You can install the project after installing cucumber and the "bundler" gem.

Using gem:
Run the the following command line in the project root path:

```
$ gem bundler
```

**This command should install all the libraries needed to run the project, if you got an error while trying to installing it,contact one of the owners or administrators of this project.**


## Running the project

There's a simple way of running all the tests scenarios using invoke:

```
$ cucumber
```

## In case of webdriver version error you can use:

### Configuration

Due to proxy, sometimes you may face a error like below:

```
 SSL certificate problem: self signed certificate in certificate chain
```
This issue is solve by symple setting the ssl verification as false on your git configs:
```
$ git config --global http.sslVerify false
```

Create file **${USER_HOME}/.wdm/config.ini** with such content:

```
[GeckoDriver]
driver_path =
gh_token =
version = latest
offline = False
```
* gh_token - Github access token to solve issues with API rate limit
* driver_path - path to driver that was already downloaded
* version - by default driver lookup for the latest version of the driver, you can freeze it
* offline - mode that will disable automatic driver lookup. In this case you need either specify exact driver version that is already in cache **${user_home}/.wdm** or set path to the driver using **driver_path** variable.

Same variables can be set for **[ChromeDriver]** and **[EdgeDriver]**

Config example:

```
[ChromeDriver]
driver_path = /home/user/.wdm/chromedriver/2.27/chromedriver
gh_token = ada23fsdfdfsdfdf
version = 2.27
offline = True
```

It will automatically download latest release of chromedriver and set path. Moreover when the new version of the driver
will be released, webdriver manager will download it and update path.

There is also possibility to set same variables via ENV VARIABLES.

Example:

```
GH_TOKEN = "asdasdasdasd"
VERSION = 2.56
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

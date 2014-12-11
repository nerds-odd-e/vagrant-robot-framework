# Robot Framework in Vagrant

## Requirements

 * [VirtualBox](https://www.virtualbox.org)
 * [Vagrant](https://www.vagrantup.com)
 * [XQuartz](http://xquartz.macosforge.org/) (Mac OS X only)
 * [Xming](http://www.straightrunning.com/XmingNotes/) (Windows only)

## Usage

``` console
$ cd vagrant-robot-framework

$ vagrant up
# Starts the VM, maybe take a long time.

$ vagrant ssh
# Log into the VM

$ vagrant ssh -c 'pybot src/path/to/your/test'
# Run tests

$ vagrant ssh -c 'pybot src/path/to/your/test' -- -x
# Run tests in headless mode
```

## What's Inside?

 * Python 2.7
 * pip
 * VirtualEnv
 * Robot Framework 2.8.6
 * Selenium2Library 1.6.0
 * Firefox
 * Xvfb

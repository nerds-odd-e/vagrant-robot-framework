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

$ pybot --version
Robot Framework 2.8.6 (Python 2.7.6 on linux2)
```

## What's Inside?

 * Python
 * pip
 * VirtualEnv
 * Robot Framework
 * Selenium2Library

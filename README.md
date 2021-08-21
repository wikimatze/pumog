## Pumog

Stands for **PuppetModuleGenerator** and can be used to generate a basic structure for new puppet modules with or without documentation.

[![Gem Version](https://badge.fury.io/rb/pumog.svg)](http://badge.fury.io/rb/pumog)
[![CircleCI](https://circleci.com/gh/wikimatze/pumog.svg?style=svg)](https://app.circleci.com/pipelines/github/wikimatze/pumog)


## Usage & Examples

Run `pumog start` and it will generate the following directory structure:

    What is the name of the module?
    test

    What is the name of the author?
    Matthias

    What is the email adress of the author?
    matthias@wikimatze.de

    New module will be created in:
    /home/wm/test

    Author/creator of the new module:
    Matthias <matthias@wikimatze.de>

    Is this correct? [y|n]:

    create  test/files
    create  test/templates
    create  test/manifests
    create  test/manifests/init.pp
    create  test/manifests/package.pp


If you pass in the `--no-doc` option, you will not asked after the author name and the email (leaving the module without
documentation).


## Commands & Options

Commands:


    pumog help [COMMAND]  # Describe available commands or one specific command
    pumog start           # creates a new puppet module


Options:


    -n, [--nodoc], [--no-nodoc]  # no documentation


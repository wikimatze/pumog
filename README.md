## Pumog

Stands for **PuppetModuleGenerator** and can be used to generate a basic structure for new puppet modules with or without documentation.


## Usage

Run `pumog start` and it will generate the following directory structure:


      create  <module-name>/files
      create  <module-name>/templates
       exist  <module-name>
      create  <module-name>/init.pp
      create  <module-name>/package.pp


If you pass in the `--no-doc` option, you will not asked after the author name and the email (leaving the module without
documentation).


# codingame_makefile
This repository aims at creating a Makefile to code on your own IDE, then concatenate all these files to create a "link-file" 

The main goal behind this project is to be able to code as usual, using separate files to organise your code, keep a decent
efficiency and ease in your working environment, then upload your code to the codingame website as a "one-file" code.

There is no official extension to sync your local file with the file on codingame yet.
The previous one was abandoned and removed from the store.
You will need to download and install an extension and an app, the following seems to do the trick:  
ext: https://chromewebstore.google.com/detail/cg-local/ihakjfajoihlncbnggmcmmeabclpfdgo  
app : https://github.com/jmerle/cg-local-app/releases  

Then I suggest cloning this repository as a "codingame" directory.

Each new codingame puzzle/challenge can then be creating using the bash script "new_folder_YOUR_CHOICE_LANGUAGE.sh"
Available languages are C, C++ and Go.

Example of proper usage for cpp: ``bash new_folder_cpp.sh name_of_directory``

It will set your basic environment for this challenge:
- creating the Makefile from the Makefile templates located at the root of the repository.
- creating the directory from the argument you gave it.
- creating a sources and a includes subdirectory.

You then only have to code and use ``make`` to compile your code and create a file to be linked with the extension at the root of the directory.
This file is by default named "codingame_sync_file"
Obviously, please make sure to update the makefile sources and include_files variables.

IMPORTANT:
Your files must end with a newline for now (especially on .h/.hpp files). A future patch should remove this need.

Enjoy!

Note this does not support libraries yet, if you are used to libraries please modify your Makefile to gather the source files you need.

If it helped, please consider contributing for improvement or other languages and starring the repo.

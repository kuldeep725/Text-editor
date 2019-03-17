# Text-editor
In this repository, a serial-text editor created by antirez is parallelized.

# Parallelization
1. The reading was very slow for big files (>5MB) because we were initially loading the whole file.
   To make it fast, the reading was done in a seperate thread and after some significant number
   of rows were read (say 100) from the file, the editor will be in working mode and the further 
   loading of the file will be done in background and meanwhile the user can still use the editor.
2. Another parallization was done for saving the file into disk. This is done by creating a seperate
   thread for saving the file into disk which can be run in background and user can use the editor 
   meanwhile. This can be useful while writing to a big file.

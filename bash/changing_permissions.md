# Changing permissions
To give access to all files and directories in my work space to my group:

To find directories and grant everyone in my group read write and execute permissions to directories (directories need to be executable) 

    find -type d -exec chmod g+rwx {} \;

To find files and grant everyone in my group read write permissions to files

    find -type f -exec chmod g+rw {} \;

- find -type f \ #find all my files from current directory
- -exec \ #then execute the following
- chmod g+rw \ # change permissions to group gets read write
- {} \; #put what you found in here

Read only for everyone for files

    find -type f -exec chmod 444 {} \;
    
Read/write for me and read only for everyone else for files

    find -type f -exec chmod 644 {} \;
    
Read/write/excute for me and read only for everyone else for files

    find -type f -exec chmod 744 {} \;

Read and execute for everyone for directories

    find -type d -exec chmod 555 {} \;

# Defined in - @ line 1
function ddu --wraps=find\ .\ -maxdepth\ 1\ -type\ d\ -exec\ du\ -s\ \{\}\ \\\; --description alias\ ddu=find\ .\ -maxdepth\ 1\ -type\ d\ -exec\ du\ -s\ \{\}\ \\\;
  find . -maxdepth 1 -type d -exec du -s {} \; $argv;
end

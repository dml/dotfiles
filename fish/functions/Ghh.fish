# Defined in - @ line 1
function Ghh --wraps='git log --follow -p --' --description 'alias Ghh=git log --follow -p --'
  git log --follow -p -- $argv;
end

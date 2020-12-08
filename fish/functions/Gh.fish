# Defined in - @ line 1
function Gh --wraps='git log --' --description 'alias Gh=git log --'
  git log -- $argv;
end

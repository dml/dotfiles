# Defined in - @ line 1
function Gl --wraps='git log --pretty=oneline' --description 'alias Gl=git log --pretty=oneline'
  git log --pretty=oneline $argv;
end

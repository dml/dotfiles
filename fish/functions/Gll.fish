# Defined in - @ line 1
function Gll --wraps='git log --pretty=format:"%h%x09%cd%x09%aN%x09%s" --date=short' --description 'alias Gll=git log --pretty=format:"%h%x09%cd%x09%aN%x09%s" --date=short'
  git log --pretty=format:"%h%x09%cd%x09%aN%x09%s" --date=short $argv;
end

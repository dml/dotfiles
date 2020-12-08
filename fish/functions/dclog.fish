# Defined in - @ line 1
function dclog --wraps='docker-compose logs --follow --tail=10' --description 'alias dclog=docker-compose logs --follow --tail=10'
  docker-compose logs --follow --tail=10 $argv;
end

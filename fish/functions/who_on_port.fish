# Defined in - @ line 1
function who_on_port --wraps='sudo lsof -iTCP -sTCP:LISTEN -n -P' --description 'alias who_on_port=sudo lsof -iTCP -sTCP:LISTEN -n -P'
  sudo lsof -iTCP -sTCP:LISTEN -n -P $argv;
end

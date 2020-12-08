# Defined in - @ line 1
function proc_on_port --wraps='sudo lsof | grep -i tcp | grep ESTABLISHED' --description 'alias proc_on_port=sudo lsof | grep -i tcp | grep ESTABLISHED'
  sudo lsof | grep -i tcp | grep ESTABLISHED $argv;
end

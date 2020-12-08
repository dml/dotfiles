# Defined in - @ line 1
function today --wraps='date "+%Y-%m-%d% %H:%M:%S"' --description 'alias today=date "+%Y-%m-%d% %H:%M:%S"'
  date "+%Y-%m-%d% %H:%M:%S" $argv;
end

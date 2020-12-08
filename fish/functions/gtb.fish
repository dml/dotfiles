# Defined in - @ line 1
function gtb --wraps='go test -v --bench . --benchmem' --description 'alias gtb=go test -v --bench . --benchmem'
  go test -v --bench . --benchmem $argv;
end

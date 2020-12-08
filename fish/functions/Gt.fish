# Defined in - @ line 1
function Gt --wraps=git\ for-each-ref\ --sort=\'\*authordate\'\ --format=\'\%\(taggerdate:short\)\ \|\ \%\(tag\)\'\ refs/tags --description alias\ Gt=git\ for-each-ref\ --sort=\'\*authordate\'\ --format=\'\%\(taggerdate:short\)\ \|\ \%\(tag\)\'\ refs/tags
  git for-each-ref --sort='*authordate' --format='%(taggerdate:short) | %(tag)' refs/tags $argv;
end

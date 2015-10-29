task :default => :tu

desc "Pruebas Unitarias de la clase Fraccion"
task :tu do
    sh "ruby -I. test/tc_racional.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
    sh "ruby -I. test/tc_racional.rb -n /simple/"
end
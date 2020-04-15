class MyProj {
    BEGIN note "compile {$?CLASS.^name}";
##   use MyProj::A;
   need MyProj::A;
##   require MyProj::A;
}

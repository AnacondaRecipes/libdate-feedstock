@echo on

md build
pushd build
cmake -DENABLE_DATE_TESTING=ON -DBUILD_TZ_LIB=ON -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -GNinja ..
ninja install
popd

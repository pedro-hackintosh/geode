cmake_minimum_required(VERSION 3.21)


add_library(GeomodedBootstrapper SHARED Bootstrapper.cpp)
target_compile_features(GeomodedBootstrapper PUBLIC cxx_std_23)
set_target_properties(GeomodedBootstrapper PROPERTIES
	PREFIX "" 
	OUTPUT_NAME "GeomodedBootstrapper"
	LIBRARY_OUTPUT_DIRECTORY "${GEODE_BIN_PATH}/nightly"
	RUNTIME_OUTPUT_DIRECTORY "${GEODE_BIN_PATH}/nightly"
)

target_link_libraries(GeomodedBootstrapper PRIVATE)

add_library(FakeGeomoded SHARED FakeGeode.cpp)
target_compile_features(FakeGeomoded PUBLIC cxx_std_23)
set_target_properties(FakeGeomoded PROPERTIES
	PREFIX "" 
	OUTPUT_NAME "Geomoded"
)

set_target_properties(GeomodedBootstrapper PROPERTIES BUILD_WITH_INSTALL_RPATH TRUE)
set_target_properties(GeomodedBootstrapper PROPERTIES INSTALL_RPATH "./")

set_target_properties(FakeGeomoded PROPERTIES BUILD_WITH_INSTALL_RPATH TRUE)
set_target_properties(FakeGeomoded PROPERTIES INSTALL_RPATH "./")

target_link_libraries(GeomodedBootstrapper PRIVATE FakeGeomoded)

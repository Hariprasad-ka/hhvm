find_package(LibMagickWand)
if (LIBMAGICKWAND_INCLUDE_DIRS AND
    LIBMAGICKWAND_LIBRARIES AND
    LIBMAGICKCORE_LIBRARIES)
	HHVM_ADD_INCLUDES(${LIBMAGICKWAND_INCLUDE_DIRS})
	HHVM_LINK_LIBRARIES(${LIBMAGICKWAND_LIBRARIES}
                            ${LIBMAGICKCORE_LIBRARIES})
	HHVM_SELECT_SOURCES("${CMAKE_CURRENT_SOURCE_DIR}/imagick")
endif()


cmake_minimum_required (VERSION 2.6)
project (librsync)

set (SRC_DIR "${CMAKE_SOURCE_DIR}")

include_directories("${CMAKE_SOURCE_DIR}")

set (LIBRSYNC_SRC ${SRC_DIR}/prototab.c ${SRC_DIR}/base64.c ${SRC_DIR}/buf.c 
                  ${SRC_DIR}/checksum.c ${SRC_DIR}/command.c ${SRC_DIR}/delta.c 
                  ${SRC_DIR}/emit.c ${SRC_DIR}/fileutil.c ${SRC_DIR}/hex.c 
                  ${SRC_DIR}/job.c ${SRC_DIR}/mdfour.c ${SRC_DIR}/mksum.c ${SRC_DIR}/msg.c 
                  ${SRC_DIR}/netint.c ${SRC_DIR}/patch.c ${SRC_DIR}/readsums.c
                  ${SRC_DIR}/rollsum.c ${SRC_DIR}/scoop.c ${SRC_DIR}/search.c 
                  ${SRC_DIR}/stats.c ${SRC_DIR}/stream.c ${SRC_DIR}/sumset.c
                  ${SRC_DIR}/trace.c ${SRC_DIR}/tube.c ${SRC_DIR}/util.c 
                  ${SRC_DIR}/version.c ${SRC_DIR}/whole.c ${SRC_DIR}/blake2b-ref.c)

add_library(rsync ${LIBRSYNC_SRC})


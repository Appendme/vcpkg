vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO uNetworking/uWebSockets
    REF d40c2d1a3119e5855ddc187f6647d79fd2229e08 # v19.5.0
    SHA512 c99df55c1e557ba2ea035a4774988d76b0d5d239b42b5cccd267d7d0344aa84d5134efb960f46520f246d8bd7b2034f3626942e07a080e8493e9664dd2de5f49
    HEAD_REF master
)

file(COPY "${SOURCE_PATH}/src"  DESTINATION "${CURRENT_PACKAGES_DIR}/include")
file(RENAME "${CURRENT_PACKAGES_DIR}/include/src" "${CURRENT_PACKAGES_DIR}/include/uwebsockets")

file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)

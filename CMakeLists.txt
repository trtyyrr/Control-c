cmake_minimum_required(VERSION 3.16)

# 项目名字 (生成的apk名字会跟这个有关)
project(MySuperApp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 1. 寻找 Qt6 库 (包含核心和界面库)
find_package(Qt6 REQUIRED COMPONENTS Quick)

# 2. 设置安卓标准项目结构 (这一步会自动处理 AndroidManifest.xml)
qt_standard_project_setup()

# 3. 添加 C++ 源码
qt_add_executable(MySuperApp main.cpp)

# 4. 把 QML 界面文件“打包”进 C++ 二进制文件里
qt_add_qml_module(MySuperApp
    URI "Main"
    VERSION 1.0
    QML_FILES Main.qml
)

# 5. 链接库
target_link_libraries(MySuperApp PRIVATE Qt6::Quick)

# 6. 设置安卓相关属性
set_target_properties(MySuperApp PROPERTIES
    QT_ANDROID_PACKAGE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/android
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

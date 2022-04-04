ARG from

FROM ${from}
MAINTAINER Vorkov Nikita "vorkov711@gmail.com"


ARG DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND=noninteractive 
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y apt-utils \
                                         tzdata \
                                         lsb-release \
                                         mesa-utils \
                                         gnupg2 \
                                         net-tools \
                                         build-essential \
                                         wget \
                                         unzip \
                                         curl \
                                         git \
                                         mc \
                                         vim


# Timezone Configuration


# Install ROS desktop and Gazebo

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
    curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add - && \
    apt-get update && apt-get install -y ros-noetic-urdf-sim-tutorial \
                                         ros-noetic-desktop-full \
                                         ros-noetic-gazebo-ros \
                                         gazebo11 \
                                         libgazebo11-dev \
                                         ros-noetic-gazebo-dev \
                                         ros-noetic-gazebo-plugins \
                                         ros-noetic-gazebo-ros-pkgs \
                                         ros-noetic-ros-control \
                                         ros-noetic-gazebo-ros-control \
                                         ros-noetic-geographic-info \
                                         ros-noetic-teleop-twist-keyboard \
                                         ros-noetic-joy \
                                         ros-noetic-effort-controllers \
                                         ros-noetic-controller-manager \
                                         python3-rosdep \
                                         python3-rosinstall \
                                         python3-rosinstall-generator \
                                         python3-wstool \
                                         python3-catkin-tools \
                                         libcanberra-gtk-module \
                                         libcanberra-gtk3-module \
                                         ros-noetic-pid \
                                         ros-noetic-visp* && \
    rosdep init && rosdep update && \
    echo "source /opt/ros/noetic/setup.bash"  >> ~/.bashrc && \
    echo "source /workspace/devel/setup.bash"  >> ~/.bashrc

# Install extra libraries
RUN apt-get install -y python3-pip
RUN pip install pathlib statistics scipy

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
                      apt-get install -y ros-noetic-ecl-geometry \
                                            ros-noetic-tf2-sensor-msgs \
                                            ros-noetic-move-base-msgs \
                                            ros-noetic-image-proc

RUN apt-get update && apt-get install -y \
                libopencv-dev libx11-dev liblapack-dev libv4l-dev libzbar-dev libpthread-stubs0-dev libsdl-dev libsdl-image1.2-dev \
                libeigen3-dev

RUN pip install numpy scikit-image 
RUN pip install pillow 
RUN pip install opencv-contrib-python

RUN pip install cython
RUN pip install bosdyn-client bosdyn-mission bosdyn-api bosdyn-core
RUN pip install empy

RUN pip install bosdyn-client bosdyn-mission bosdyn-api bosdyn-core
RUN apt-get install -y ros-geometry-msgs


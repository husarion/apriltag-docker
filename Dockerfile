ARG ROS_DISTRO=humble
ARG PREFIX=

FROM husarnet/ros:${PREFIX}${ROS_DISTRO}-ros-core

RUN apt update && apt install -y \
      ros-$ROS_DISTRO-apriltag-ros \
      ros-$ROS_DISTRO-v4l2-camera && \
    apt clean &&  \
    rm -rf /var/lib/apt/lists/*


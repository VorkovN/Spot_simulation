###Поднять докер

(структуру запуска слизал с олимпиады я профи по робототехнике)
* ./docker/install_docker.bash
* ./docker/build_docker.sh 
* ./docker/run_docker.sh
* ./docker/into_docker.sh -повторно зайти в докер все последующие разы после выполнения run_docker.sh

#В докере

roscore

собрать проект
./rebuild.sh из workspace

запуск пустого газебо
roslaunch gazebo_ros empty_world.launch 


импортировать модель руками(пустота)
rosrun gazebo_ros spawn_model -urdf -file /workspace/src/spot_ros/spot_description/urdf/spot.urdf.xacro -model MyRobot

импортировать модель автоматически(как я думал)
roslaunch spot_description description.launch 

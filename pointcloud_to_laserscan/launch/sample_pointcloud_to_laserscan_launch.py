from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument
from launch.actions import ExecuteProcess
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        #Node(
         #   package='tf2_ros',executable='static_transform_publisher',
          #  name ='static_transform_publisher',
           # arguments=[
            #    "0" ,"0","0" ,"0","0" ,"0", 'base_link', 'velodyne',
            #]
       # ),
 

        Node(
            package='pointcloud_to_laserscan', executable='pointcloud_to_laserscan_node',
            remappings=[('cloud_in', '/velodyne_points'),
                        ('scan', '/scan_pt')],
            parameters=[{
                'target_frame': 'odom',
                'transform_tolerance': 0.01,
                'min_height': 0.0,
                'max_height': 0.4,
                'angle_min': -3.1415,  # -M_PI/2
                'angle_max': 3.1415,  # M_PI/2
                'angle_increment': 0.0087,  # M_PI/360.0
                'scan_time': 0.3333,
                'range_min': 0.45,
                'range_max': 30.0,
                'use_inf': True,
                'inf_epsilon': 1.0
            }],
            name='pointcloud_to_laserscan'
        )
    ])


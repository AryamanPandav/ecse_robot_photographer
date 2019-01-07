#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from darknet_ros_msgs.msg import *
import timeit
from take_picture.msg import photo
import os
from geometry_msgs.msg import Twist
from cv_bridge import CvBridge
from sensor_msgs.msg import Image
import cv2

take_pic = False
pub = rospy.Publisher('RosAria/cmd_vel', Twist, queue_size=1)
debug_pub = rospy.Publisher('debug', String, queue_size=1)

def callback(data):
	global take_pic
	global nn_sub


	if take_pic:
		return

	min_x = 10000
	max_x = 0

	for face in data.bounding_boxes:
		min_x = min(face.xmin, min_x)
		max_x = max(face.xmax, max_x)
        
       

	center = (min_x + max_x) / 2.0


	speed = Twist()
	
	speed.angular.z = -0.002 * (center - 320) 

	if abs(320 - center) < 10:
		take_pic = True
                nn_sub.unregister()

	pub.publish(speed)        

bridge = CvBridge()
def callback_cam(data):

	global take_pic
	global bridge
	debug_pub.publish(str(take_pic))
	if take_pic:
		debug_pub.publish("taking pic")
		cv_image = bridge.imgmsg_to_cv2(data, "bgr8")
                cv2.imwrite("/home/nvidia/PIC.png", cv_image)
		take_pic = False



nn_sub = None
cam_sub = None

def listener():
    global nn_sub
    global cam_sub
    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)

    nn_sub = rospy.Subscriber("/darknet_ros/bounding_boxes", darknet_ros_msgs.msg.BoundingBoxes, callback)
    cam_sub = rospy.Subscriber("/cv_camera/image_raw", Image, callback_cam)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()

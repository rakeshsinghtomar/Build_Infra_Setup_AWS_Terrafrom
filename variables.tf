variable "aws_region" {
	type="string"
	default="us-east-1"
}

variable "amilinux"{
	default="ami-00dc79254d0461090"
}

variable "instanceType"{
	default="t2.medium"
}

variable "key-nameForInstance"{
        default="rakeshaws"
}

variable "Instance_name"{
        default="Build_Server"
}

variable "connectionType"{
	default="ssh"
}

variable "userNameForConnection"{
	default="ec2-user"
}

variable "conn_timeout"{
	default="2m"
}

variable "alarmName_CPUUtilization"{
	default="web-cpu-alram"
}

variable "alarmName_MemoryUtilization"{
	default="memoryUtilization"
}

variable "comparison-operatorForMetrics"{
	default="GreaterThanOrEqualToThreshold"
}

variable "nameSpaceForEc2Inbuilt"{
	default="AWS/EC2"
}

variable "periodForExecution"{
	default="120"

}

variable "nameSpaceForCustomLinuxMetrics"{
	default="System/Linux"
}

variable "evaluationPeriodForMetrics"{
	default="2"
}

variable "ThresholdForAlarm"{
	default="50"
}

variable "metricName"{
	type    = list(string)
	default =["CPUUtilization","MemoryUtilization"]
}

variable "statisticForMetrics"{
	default="Average"
}

variable "vpc_name"{
        default="My_Custom_VPC"
}

variable "subnet_name"{
        default="My_VPC_Subnet"
}

variable "cidr-block_for_VPC"{
	type="string"
	default="10.0.0.0/16"
}

variable "cidr-block_for_Subnet"{
	type="string"
	default="10.0.0.0/24"
}

variable "availablityZone"{
	default="us-east-1a"
}

variable "enableAnyAttribute"{
	default="true"
}

variable "aws_route_table_name"{
	default="My_routeTable"
}

variable "disableAnyAttribute"{
	default="false"
}

variable "cidrBlockForAllTrafficEnable"{
	default="0.0.0.0/0"	
}

variable "myEmail"{
	default="singh.rakesh406@gmail.com"
}

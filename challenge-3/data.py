import json
import boto3

def get_instance_data():
    instance_dict = {"Instance_Id":[],"Instance_Type":[],"Availability_Zone":[],"State":[]}
    ec2 = boto3.client('ec2', region_name='us-east-1')
    response = ec2.describe_instances()
    for i1 in range(len(response["Reservations"])):
        #print(response["Reservations"][i1]["Instances"])
        for i2 in range(1):
                instance_dict["Instance_Id"].append(response["Reservations"][i1]["Instances"][i2]["InstanceId"])
                instance_dict["Instance_Type"].append(response["Reservations"][i1]["Instances"][i2]["InstanceType"])
                instance_dict["Availability_Zone"].append(response["Reservations"][i1]["Instances"][i2]["Placement"]["AvailabilityZone"])
                instance_dict["State"].append(response["Reservations"][i1]["Instances"][i2]["State"]["Name"])
    return instance_dict

if __name__ == "__main__":
    print(get_instance_data())

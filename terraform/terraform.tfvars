region              = "us-east-1"
project_name        = "tomato"
vpc_cidr            = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
availability_zones  = ["us-east-1a", "us-east-1b"]
backend_port        = 4000
frontend_port       = 80
admin_port          = 80
mongo_url           = "mongodb://flipkart:1Anushaflip@ac-tmqqdta-shard-00-00.iajtlwm.mongodb.net:27017,ac-tmqqdta-shard-00-01.iajtlwm.mongodb.net:27017,ac-tmqqdta-shard-00-02.iajtlwm.mongodb.net:27017/foodapp?authSource=admin&tls=true&replicaSet=atlas-10ko70-shard-0"
jwt_secret          = "mysecretkey123"
stripe_secret_key   = "sk_test_dummy"
module "this" {

    source = "../terraform-aws-vpc"
    cidr_block = var.cidr_block  
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags
    gw_tags = var.gw_tags
  


   #public subnet section 
    public_subnet_cidr = var.public_subnet_cidr

    public_subnet_names = var.public_subnet_names
     

    #availability  zone section
    azs = var.azs


    #private subnet section 
    private_subnet_cidr = var.private_subnet_cidr

    private_subnet_names = var.private_subnet_names 
      

    #database subnet section
    database_subnet_cidr =var.database_subnet_cidr
    database_subnet_names = var.database_subnet_names


    #rounte table 
    public_route_table_tags =var.public_route_table_tags
    private_route_table_tags = var.private_route_table_tags
   
   database_route_table_tags = var.database_route_table_tags
      

 
}
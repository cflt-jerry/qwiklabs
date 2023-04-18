# Create Lab User
resource "confluent_invitation" "lab_user" { 
  email 	= var.user_email
  auth_type 	= "AUTH_TYPE_LOCAL"
}

# Create Lab environment. 
resource "confluent_environment" "qlab" { 
  display_name 	= "qlab_${confluent_invitation.lab_user.user[0].id}"
}

# Bind invited user to the Lab invironment. 
resource "confluent_role_binding" "env-admin-rb" {
  principal	= "User:${confluent_invitation.lab_user.user[0].id}"
  role_name	= "EnvironmentAdmin"
  crn_pattern	= confluent_environment.qlab.resource_name
}

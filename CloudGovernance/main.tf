provider "azuread" {

}

resource "azuread_user" "user" {
	user_principal_name="ahmedgrati1999@gmail.com"
	display_name="Ahmed Grati"
	mail_nickname="Ahmed"
	/*Chill it's just random (it will be deleted =D)*/
	password="randomPassword123"
}

resource "azuread_group" "group" {
	display_name="AdminGroup"
	security_enabled=true
	members = [
		azuread_user.user.object_id
	]
}
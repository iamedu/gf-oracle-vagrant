name "alfresco"
description "Install alfresco"

run_list(
	"recipe[alfresco]"
)

override_attributes "mysql" => {
	"server_debian_password" => "somerandompassword",
	"server_root_password" => "somerandompassword",
	"server_repl_password" => "somerandompassword"
}, "alfresco" => {
	"version" => "4.2c",
	"zip_url" => "http://dl.alfresco.com/release/community/build-04576/alfresco-community-4.2.c.zip",
	"zip_sha256" => "eede352ae98d355170f2860f59271d4509fc04005e1a6f22038978db894aaf8e"
}, "java" => {
	"jdk_version" => "7"
}

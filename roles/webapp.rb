name "webapp"
description "webapp"

run_list(
	"recipe[java]",
	"recipe[glassfish]",
	"recipe[webapp]"
)

override_attributes "java" => {
	"jdk_version" => "7"
}

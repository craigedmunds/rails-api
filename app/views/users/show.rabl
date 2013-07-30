# app/views/users/show.rabl
object false

child :status do
	node(:code) { |m| @status_code }
	node(:desc) { |m| @status_desc }
end

child(@user) {
 
	# Reuse the show template definition
	extends "users/user"

}
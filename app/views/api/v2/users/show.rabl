# app/views/api/v2/users/show.rabl
object false

child :status do
	node(:code) { |m| @status_code }
	node(:desc) { |m| @status_desc }
end

child(@user) {
 
	# Reuse the show template definition
	extends "api/v1/users/show"

}
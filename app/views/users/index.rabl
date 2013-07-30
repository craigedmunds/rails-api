# app/views/users/index.rabl
object false


child :status do
	#node(:some_count) { |m| @users.count }
	node(:code) { |m| @status_code }
	node(:desc) { |m| @status_desc }
  #attributes :status_code, :status_desc
end

child(@users) {
 
	# Reuse the show template definition
	extends "users/user"
	 
	# Let's add an "id" resource for the index action
	attributes :id
}
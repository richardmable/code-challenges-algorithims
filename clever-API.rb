# for interacting with the Clever API
# find number of average students per class
#require json to interact with the returned data
require 'json'
require 'net/https'
# uri settings with token
uri = URI('https://api.clever.com/v1.1/districts/4fd43cc56d11340000000005/sections')

http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

# setting the uri and adding the bearer tokens to the uri
request = Net::HTTP::Get.new(uri.request_uri)
request.add_field 'Authorization', 'Bearer DEMO_TOKEN'

# setting the response var to the request
response = http.request(request)
# setting the response var to the body of the response
response = response.body

# parsing the response body into json format for easy querying 
parsed = JSON.parse(response)

# set a sum of students var
sum_students = 0
# set a number of classrooms var
counter_classroom = 0
# iterate through the returned data using #each
parsed['data'].each do |x|
	# count the number of student string objects in each classroom
	# add it to the current sum of students
	sum_students = sum_students + x['data']['students'].count
	# increment the classroom counter by 1 count the classroom
	counter_classroom += 1
end

# get the average students per class by diving the sum
# of students by the number of classrooms
# use float to ensure there are no funny errors when dividing
avg_students = sum_students.to_f / counter_classroom.to_f

# print the average number of students rounded
# to the nearest whole number to the terminal
puts avg_students.round(0)

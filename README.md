Email List Validation

A ruby gem wrapper for the emaillistvalidation.com API.

Installation

Add this line to your application's Gemfile:

gem 'emailvalidation'
And then execute:

$ bundle
Or install it yourself as:

$ gem install emaillistvalidation
Usage

To use the gem, first include emaillistvalidation

require 'emaillistvalidation'
Then create an instance of the emaillistvalidation with api_key as the parameter

api_key = "<YOUR_API_KEY>"
client = Emaillistvalidation.new(api_key)
Now the API calls can be done via the client

For OneByOne Verification

client.one_by_one("<email_to_verify>")
To Upload a Bulk File

client.upload_file("<file_name>","<path/to/file>")
path/to/file is optional if file_name file is present in same directory

To get the status of the last uploaded file

client.bulk_status
To get the status of any file with file_id

client.bulk_status("<file_id>")
Example

Create a client

client = Emaillistvalidation.new("<api_key>")
Verify Single Email

client.one_by_one("ankur13019@iiitd.ac.in")
# ok
Upload a bulk verify file

client.upload_file("emails.txt")
# 1234
Check the status of last uploaded file

client.bulk_status
# 123456|1234_clean.csv|no|0|0|new|1456521414||
Check the status of previously uploaded file

client.bulk_status(1233)
# 123455|1233_clean.csv|no|2|2|finished|1456521414|<url_to_result_ok.csv>|<url_to_all_results.csv>
Development

After checking out the repo, run bin/setup to install dependencies. You can also run bin/console for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run bundle exec rake install. To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and tags, and push the .gem file to rubygems.org.

Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Xavierluijer/Emaillistvalidation-Ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

License

The gem is available as open source under the terms of the MIT License.

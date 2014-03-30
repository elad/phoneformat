all:
	curl -s -X POST -d output_format=text -d output_info=compiled_code -d use_closure_library=true \
		-d code_url="https://libphonenumber.googlecode.com/svn/trunk/javascript/i18n/phonenumbers/asyoutypeformatter.js" \
		-d code_url="https://libphonenumber.googlecode.com/svn/trunk/javascript/i18n/phonenumbers/phonenumberutil.js" \
		-d code_url="https://libphonenumber.googlecode.com/svn/trunk/javascript/i18n/phonenumbers/regioncodefortesting.js" \
		-d code_url="https://libphonenumber.googlecode.com/svn/trunk/javascript/i18n/phonenumbers/phonemetadata.pb.js" \
		-d code_url="https://libphonenumber.googlecode.com/svn/trunk/javascript/i18n/phonenumbers/metadata.js" \
		-d code_url="https://libphonenumber.googlecode.com/svn/trunk/javascript/i18n/phonenumbers/phonenumber.pb.js" \
		--data-urlencode js_code@closure.js \
		-o phoneformat.min.js \
		http://closure-compiler.appspot.com/compile

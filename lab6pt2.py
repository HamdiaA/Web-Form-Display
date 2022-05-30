#!/usr/bin/python
import cgi, cgitb
form = cgi.FieldStorage()

fName = form.getvalue('first')
lName = form.getvalue('last')
address = form.getvalue('address')
phoneNumber = form.getvalue('phone')

print 'Content-type:text/html\n\n'
print '<html><body style="background-color:blue; text-align: center; margin-top: 20px;">'
print '<h1>First Name: ' + fName + '</h1>'
print '<br><h1>Last Name: ' + lName + '</h1>'
print '<br><h1>Address: ' + address + '</h1>'
print '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>'
print '<script type="text/javascript">'
print 'var phoneNumber = "' + phoneNumber + '";'
print """var splitPhone = phoneNumber.split("-");
		document.write("<span class='one' style='color: red; font-size: 3em'>" + splitPhone[0] + "</span>");
		$('.one').animate({fontSize: '3.5em'}, "slow");
		document.write("<span class='two' style='color:green; font-size: 3em; opacity: 0.5;'>- " + splitPhone[1] + "</span>");
		$('.two').delay(1000).animate({margin: '25px', opacity: '1.0'}, "slow");
		document.write("<span class='three' style='color:blue; font-size: 3em;'>- " + splitPhone[2] + "</span>");
		$('.three').delay(2000).animate({letterSpacing: '10px'}, "slow");
</script>
</body>
</html>
"""


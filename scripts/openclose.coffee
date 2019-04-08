# Description:
#	To tell bot if the lab is open or closed.
#
# Commands:
#	bot is lab open/close
#	bot lab is open/close

module.exports = (robot)->
	status = ''

	robot.hear /lab is (open|closed|close)/i, (msg)->
		status = msg.match[1]
		msg.send "Okay lab is #{status}"


	robot.hear /(is|was) (lab|labs) (open|close|closed)/i , (msg)->
		if status.length > 0
			msg.send "lab is #{status}" 	
		else
			msg.send "Ah! Nobody informed me about the lab status. Don't hold me responsible for this :expressionless:"


extends Node


func check_mobile():
	if OS.get_name() == "Web":
		var is_web_mobile: bool = JavaScriptBridge.eval("/windows phone/i.test(navigator.userAgent || navigator.vendor || window.opera) || /android/i.test(navigator.userAgent || navigator.vendor || window.opera) || (/iPad|iPhone|iPod/.test(navigator.userAgent || navigator.vendor || window.opera) && !window.MSStream)", true)
		if is_web_mobile:
			return true
		else: 
			return false
	else :
		return false
	if OS.get_name() == "Android" or OS.get_name() == "iOS":
		return true
	elif not OS.get_name() == "Android" and not OS.get_name() == "iOS":
		return false
		
func check_web():
	if OS.get_name() == "Web":
		return true
	else:
		return false
		
func check_windows():
	if OS.get_name() == "Windows":
		return true
	else:
		return false
		
func check_mac():
	if OS.get_name() == "macOS":
		return true
	else:
		return false

func check_linux():
	if OS.get_name() == "X11":
		return true
	else:
		return false

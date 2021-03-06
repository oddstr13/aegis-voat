'""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
'Script to create a System Restore point in Windows 8, 7, Vista
'Created on May 10 2008 - Revised on Jan 10, 2016
'� 2008-2016 - Ramesh Srinivasan. http://www.winhelponline.com/blog
'Modified by https://voat.co/u/thepower
'""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
If GetOS = "Windows Vista" Or GetOS = "Windows 7" Then
	If WScript.Arguments.length =0 Then
  		Set objShell = CreateObject("Shell.Application")
		objShell.ShellExecute "wscript.exe", """" & _
  		  WScript.ScriptFullName & """" & " uac","", "runas", 1
	Else
  		CreateSRP
  	End If
End If

If GetOS = "Windows 8" Then
	If WScript.Arguments.length =0 Then
  		Set objShell = CreateObject("Shell.Application")
		objShell.ShellExecute "wscript.exe", """" & _
  		 WScript.ScriptFullName & """" & " uac","", "runas", 1
	Else
		const HKEY_LOCAL_MACHINE = &H80000002
             	strComputer = "."
            	Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\default:StdRegProv")
             	strKeyPath = "SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore"
             	strValueName = "SystemRestorePointCreationFrequency"
             	oReg.SetDWORDValue HKEY_LOCAL_MACHINE,strKeyPath,strValueName, 0  
  		CreateSRP
		oReg.DeleteValue HKEY_LOCAL_MACHINE, strKeyPath, strValueName
  	End If
End If

Sub CreateSRP
	Set SRP = getobject("winmgmts:\\.\root\default:Systemrestore")
	sDesc = "Manual Restore Point"
	sDesc = InputBox ("Enter a description.", "Create Restore Point","Aegis v1.11")
	If Trim(sDesc) <> "" Then
		sOut = SRP.createrestorepoint (sDesc, 0, 100)
		If sOut <> 0 Then
	 		WScript.echo "Error " & sOut & _
	 		  ": Unable to create Restore Point."
		End If
	End If
End Sub

Function GetOS    
    Set objWMI = GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & _
    	".\root\cimv2")
    Set colOS = objWMI.ExecQuery("Select * from Win32_OperatingSystem")
    For Each objOS in colOS
	strOSName = objOS.Caption
        If instr(strOSName, "Windows 7") Then
        	GetOS = "Windows 7"    
        ElseIf instr(strOSName, "Vista") Then
        	GetOS = "Windows Vista"
	ElseIf instr(strOSName, "Windows 8") Then
      		GetOS = "Windows 8"
        End If
	Next
End Function

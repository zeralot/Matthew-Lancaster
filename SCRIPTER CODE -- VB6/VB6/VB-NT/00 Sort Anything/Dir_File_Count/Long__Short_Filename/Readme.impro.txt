\\
Improfane's LongToShort File Name converter
by Improfane
--> If your text editor has word wrap, please turn it on for easier reading. If you do not know how to I suggest you look in Help or search it with Google (http://www.google.com/)
~~~
DOCUMENTATION

NOTE: Read 'readme.txt' to learn HOW to use this program

About: -
The application can convert to and from Long and Short filenames by either:
	- pasting a short or long file name
	- broswing for a file to turn a long file name into a short one
It then uses a two Microsoft functions to convert accordingly.

This program though bordering 'useless' could provide help to some [beginner|intermediate|advanced] (depends what skills you call for each one) Visual Basic programers, in contains code for:
	- If and Case branching
	- Opening up menus	- Copying and Pasting
	- Opening up file open dialogs

Included with this file should be the the project file (.vbp), the form with all the examples above (.frm) and a module (.bas) containing the Microsoft filename functions.

It could also give you an
	- example of a programer's style and how they structure/comment their work

What: -
The program uses two functions by Microsoft which can change long file names to short file names or short file names to long file names. This program gives an example with a basic interface using these functions on how you could
	- browse for a file for use,
	- copy and paste from/to the clipboard,
	- and how users can use context menus to make choices

How: -
Attach the 'longtoshort.bas' to your Project and use the function(s) below to return long/short file names:

	GetShortName(ByVal sLongFileName As String) As String
		- Returns Short file name as a string
		sLongFileName - The long file name you want to convert to short
	Example - msgbox(GetShortName("C:\textfile.txt"))

	GetLongName(ByVal sShortName As String) As String
		- Returns Long file name as a string
		sShortName - The short file name you want to convert to long
	Example - Example - msgbox(GetLongName("C:\textfile.txt"))


Other: -
Well, please tell me if this program helped your program and at least maybe some credit if you learnt something from the form. Contact me and I'd like to see your accomplishment -- Its always nice to see how well you helped someone...
The module does not belong to me but belongs to Microsoft.


Please contact me on anything I have done wrong, any code that can be improved or any other comments useful to this program.

~~~
Credit/Legal Stuff:
Improfane/Vx3 are belong to Improfane, All rights reserved, 2004.
---> http://www.improfane.pwp.blueyonder.co.uk/
Microsoft
	- Visual Basic
	- http://support.microsoft.com/default.aspx?scid=kb;EN-US;154822
	- http://support.microsoft.com/kb/q175512/
// 
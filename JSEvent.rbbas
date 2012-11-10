#tag Class
Protected Class JSEvent
Inherits JSEventDT
	#tag Event
		Sub KeyValueEvent(HashQueryString As String)
		  'mSess.ShowUserMSGBox(HashQueryString)
		  
		  'We add all keys and values to the listbox
		  PageHome.listQueryStrings.DeleteAllRows() 'first delete all rows
		  
		  For each key As Variant in me.Keys
		    PageHome.listQueryStrings.AddRow Key.StringValue, me.Value(key).StringValue
		  Next
		End Sub
	#tag EndEvent


	#tag Note, Name = Usage of the current session
		
		You can get the current session with the property "mSess"
		All session properties and methods are available
		
		just type mSess. and you will see all properties wich you can use in the KeyValueEvent
		
		To get a Key or value try this:
		Dim myVal As String
		if me.HasKey("keyname") then
		  myVal = me.Value("keyname")
		end if
		
		
		Because this is a class, there is no other way to tell the Web APP wich session to use then using "mSess"
		You can create a function in the Session wich you call from this class with use of mSess.FunctionName
		
		I have created a function to show a MsgBox to the current user only
		use it with mSess.ShowUserMSGBox( "string here" )
		
	#tag EndNote


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass

#tag Class
Protected Class JSEventDT
Inherits Dictionary
	#tag Method, Flags = &h1000
		Sub Constructor(Sess As Session)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  mSess = Sess
		  
		  'Extract keyvalues
		  ExtractKeyValuesFromHashTag(mSess.HashTag)
		  
		  'Create handler
		  AddHandler mSess.HashTagChanged, AddressOf HandleHashTagChanged
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Sess As Session, HashTag As String)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  mSess = Sess
		  
		  'Extract keyvalues
		  ExtractKeyValuesFromHashTag(HashTag)
		  
		  'Create handler
		  AddHandler mSess.HashTagChanged, AddressOf HandleHashTagChanged
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  'Cleanup
		  RemoveHandler mSess.HashTagChanged, AddressOf HandleHashTagChanged
		  mSess = nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ExtractKeyValuesFromHashTag(HashTag As String)
		  'This will erase all key-values and create a new Dictionary
		  
		  Dim K, V, KV As String
		  Dim PairCount As Integer
		  
		  me.Clear() 'Remove all key-values
		  
		  PairCount = CountFields(HashTag, "&")
		  
		  For i As integer = 1 to PairCount
		    'Loop trough all items
		    
		    if i = PairCount and NthField(HashTag, "&", PairCount) = "" then Return 'If the last item is empty, break out the loop
		    
		    KV = NthField(HashTag, "&", i)
		    
		    K = NthField(KV, "=", 1)
		    V = NthField(KV, "=", 2)
		    
		    if k <> "" then
		      'Key is not blank (val may be blank)
		      me.Value(k) = v
		    end if
		    
		  Next
		  
		  if AutoClearHashTag then mSess.HashTag = ""
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HandleHashTagChanged(Sender As Session)
		  'We have got some new hashtag data
		  ExtractKeyValuesFromHashTag(Sender.HashTag)
		  
		  'RaiseEvent to tell user that we have a change
		  RaiseEvent KeyValueEvent(mSess.HashTag)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event KeyValueEvent(HashQueryString As String)
	#tag EndHook


	#tag Note, Name = JSEventDT
		
		This class is based on source found on the web.
		
		Many websites are so dynamic with great usage ideas for RS Web edition.
		A common problem is that you can't safely get JavaScript (client) events to your Web Application (server).
		JSEventDT is the solution to this problem by using the location.hash (in javascript) to push info to the server.
		
		It looks alot like Query strings but it's not the same. There is no need to refresh the page, the data is send in a very 
		dynamic way. It's perfect for usage with RS Web edition and your Web Apps.
		
		Don't bother trying to find wich event the RS JavaScript framework uses. Just use Session.HashTag and Session.HashTagChanged
		
		I hope to see this in the future as native events and functions in the Session object.
		This way we all get a perfect solution to extend every Web APP with javascript based plugins.
		
		MIT license (see online) free to use in any project
		
		Regards,
		Derk Jochems - NL - swort
	#tag EndNote


	#tag Property, Flags = &h0
		AutoClearHashTag As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mSess As Session
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AutoClearHashTag"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BinCount"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Dictionary"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Dictionary"
		#tag EndViewProperty
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

#tag Class
Protected Class Session
Inherits WebSession
	#tag Event
		Sub Open()
		  JSEvent = new JSEvent(self) 'Create a new JSEventDT and pass this session (self) to it.
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ShowUserMSGBox(Msg As String)
		  'this is to be called externally from a class
		  MsgBox Msg
		  
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Use of JSEventDT
		
		The property JSEvent As JSEvent is needed for this class to work.
		Use a Subclass of JSEventDT (in this example called JSEvent) where you do your actions.
		
		You can refer to 
	#tag EndNote


	#tag Property, Flags = &h0
		JSEvent As JSEvent
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ActiveConnectionCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BrowserVersion"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConfirmMessage"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GMTOffset"
			Group="Behavior"
			Type="Double"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HashTag"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeaderCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Identifier"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
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
			Name="PageCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Protocol"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemoteAddress"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Secure"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StatusMessage"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Timeout"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="URL"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_Expiration"
			Group="Behavior"
			InitialValue="-1"
			Type="Double"
			InheritedFrom="WebSession"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass

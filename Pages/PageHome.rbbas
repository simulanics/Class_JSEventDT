#tag WebPage
Begin WebPage PageHome
   Cursor          =   0
   Enabled         =   True
   Height          =   400
   HelpTag         =   ""
   HorizontalCenter=   0
   ImplicitInstance=   True
   Index           =   ""
   IsImplicitInstance=   ""
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   ""
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   LockVertical    =   ""
   MinHeight       =   400
   MinWidth        =   600
   Style           =   "None"
   TabOrder        =   0
   Title           =   "JSEventDT"
   Top             =   0
   VerticalCenter  =   0
   Visible         =   True
   Width           =   600
   ZIndex          =   1
   _HorizontalPercent=   ""
   _ImplicitInstance=   False
   _IsEmbedded     =   ""
   _Locked         =   ""
   _NeedsRendering =   True
   _OfficialControl=   False
   _OpenEventFired =   ""
   _ShownEventFired=   ""
   _VerticalPercent=   ""
   Begin WebTextField txtHashTag
      AutoCapitalize  =   True
      AutoComplete    =   True
      AutoCorrect     =   True
      Cursor          =   0
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   20
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      ReadOnly        =   False
      Scope           =   0
      Style           =   "None"
      TabOrder        =   0
      Text            =   ""
      Top             =   14
      Type            =   0
      VerticalCenter  =   0
      Visible         =   True
      Width           =   560
      ZIndex          =   1
      _HorizontalPercent=   ""
      _IsEmbedded     =   ""
      _Locked         =   ""
      _NeedsRendering =   True
      _OpenEventFired =   ""
      _VerticalPercent=   ""
   End
   Begin WebButton bSend
      Caption         =   "Send to server via JavaScript (see source of this button)"
      Cursor          =   0
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "None"
      TabOrder        =   1
      Top             =   48
      VerticalCenter  =   0
      Visible         =   True
      Width           =   560
      ZIndex          =   1
      _HorizontalPercent=   ""
      _IsEmbedded     =   ""
      _Locked         =   ""
      _NeedsRendering =   True
      _OpenEventFired =   ""
      _VerticalPercent=   ""
   End
   Begin WebListBox listQueryStrings
      AlternateRowColor=   15594494
      ColumnCount     =   2
      ColumnWidths    =   "*"
      Cursor          =   0
      Enabled         =   True
      HasHeading      =   True
      Height          =   298
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      InitialValue    =   ""
      Left            =   20
      ListIndex       =   -1
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MinimumRowHeight=   22
      Multiline       =   false
      PrimaryRowColor =   16777215
      Scope           =   0
      Style           =   "None"
      TabOrder        =   -1
      Top             =   82
      VerticalCenter  =   0
      Visible         =   True
      Width           =   560
      ZIndex          =   1
      _HorizontalPercent=   ""
      _IsEmbedded     =   ""
      _Locked         =   ""
      _NeedsRendering =   True
      _OpenEventFired =   ""
      _VerticalPercent=   ""
   End
End
#tag EndWebPage

#tag WindowCode
#tag EndWindowCode

#tag Events txtHashTag
	#tag Event
		Sub Open()
		  'We set some example location.hash for the javascript
		  me.Text = "src="+_
		  "http://swort.eu"+_
		  "&"+_
		  "page="+_
		  self.Name+_
		  "&"+_
		  "session_count="+_
		  Str(App.SessionCount)+_
		  "&"+_
		  "connection_count="+_
		  Str(Session.ActiveConnectionCount)
		  
		  
		  'set the listQueryStrings
		  'execute some javascript on the client side
		  ExecuteJavaScript "location.hash = """ + txtHashTag.Text + """;" 'We set the location.hash for the server to extract it.
		  'this is handled by the RS Javascript framework, so we don't need to mess with it's functions
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bSend
	#tag Event
		Sub Action()
		  'execute some javascript on the client side
		  ExecuteJavaScript "location.hash = """ + txtHashTag.Text + """;" 'We set the location.hash for the server to extract it. 
		  'this is handled by the RS Javascript framework, so we don't need to mess with it's functions
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events listQueryStrings
	#tag Event
		Sub Open()
		  me.Heading(0) = "Key"
		  me.Heading(1) = "Value"
		End Sub
	#tag EndEvent
#tag EndEvents

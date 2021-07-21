Class rcc.IC.serItem Extends (%SerialObject, %Populate)
{

Property Subject As %String [ Required ];

Property Change As %TimeStamp [ Required ];

Property Color As %String(COLLATION = "EXACT", VALUELIST = ",red,white,blue,yellow,black,unknown") [ Required ];

Storage Default
{
<Data name="serItemState">
<Value name="1">
<Value>Subject</Value>
</Value>
<Value name="2">
<Value>Change</Value>
</Value>
<Value name="3">
<Value>Color</Value>
</Value>
</Data>
<State>serItemState</State>
<StreamLocation>^rcc.IC.serItemS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}


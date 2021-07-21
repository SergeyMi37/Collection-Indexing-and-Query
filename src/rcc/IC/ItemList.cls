Class rcc.IC.ItemList Extends (%Persistent, %Populate) [ Final ]
{

Property Company As %String [ Required ];

Property Region As list Of %String(COLLATION = "EXACT", POPSPEC = ":4", VALUELIST = ",US,CD,MX,EU,JP,AU,ZA") [ Required ];

Property Items As list Of rcc.IC.serItem(POPSPEC = ":4") [ Required ];

Index xreg On Region(ELEMENTS);

Index xitm On Items(ELEMENTS);

Index ycol On Items(ELEMENTS).Color;

Storage Default
{
<Data name="ItemListDefaultData">
<Value name="1">
<Value>Company</Value>
</Value>
<Value name="2">
<Value>Region</Value>
</Value>
<Value name="3">
<Value>Items</Value>
</Value>
</Data>
<DataLocation>^rcc.IC.ItemListD</DataLocation>
<DefaultData>ItemListDefaultData</DefaultData>
<IdLocation>^rcc.IC.ItemListD</IdLocation>
<IndexLocation>^rcc.IC.ItemListI</IndexLocation>
<StreamLocation>^rcc.IC.ItemListS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


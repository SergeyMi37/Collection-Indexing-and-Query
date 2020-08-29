Class rcc.IC.ItemList Extends (%Persistent, %Populate) [ Final ]
{
Property Company As %String [ Required ];
Property Region As list Of %String(COLLATION = "EXACT", POPSPEC = ":4", VALUELIST = ",US,CD,MX,EU,JP,AU,ZA") [ Required ];
Property Items As list Of rcc.IC.serItem(POPSPEC = ":4") [ Required ];
Index xreg On Region(ELEMENTS);
Index xitm On Items(ELEMENTS);
Index ycol On Items(ELEMENTS).Color;
}

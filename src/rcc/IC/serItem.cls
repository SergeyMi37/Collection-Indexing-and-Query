Class rcc.IC.serItem Extends (%SerialObject, %Populate)
{
Property Subject As %String [ Required ];
Property Change As %TimeStamp [ Required ];
Property Color As %String(COLLATION = "EXACT", VALUELIST = ",red,white,blue,yellow,black,unknown") [ Required ];
}

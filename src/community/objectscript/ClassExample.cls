Include community.objectscript.macroexample

Class community.objectscript.ClassExample
{

Parameter Global = "^community.objectscript.settings";

ClassMethod GetTheUniverseSecret() As %Status
{
    return "42"
}

ClassMethod Version() As %String
{
    return $$$IRISVersion
}

ClassMethod Namespace() As %String
{
    return $$GetCurrentNamespace^community.objectscript.MacExample()
}

ClassMethod OutputGlobal() As %Status
{
    zw @(..#Global)
}

ClassMethod SetToTheGlobal(int As %Integer, str As %String) As %Status
{
    // This method sets to a #Global incominng parameters int and str, current date and the version

    set @(..#Global)@("integer")=$g(int)
    set @(..#Global)@("string")=$g(str)
    set @(..#Global)@("today")=$zdate($H,2)
    set @(..#Global)@("IRIS Version")=$ZVersion
}

}

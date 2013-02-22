module datamodel/example/entities

entity Ent1 {
	field  : Text
	field2 :: Text
	refer -> List<Ent1> (default=1, allowed=from Ent1,inverse=Ent1.refer, validate(true, "crap"), not empty, not null)
	prop :: String := field + field2
	prop :: String := field + field2
	comp <> List<Ent1>
}

entity Ent2 : Ent1 { }

extend entity Ent1 { }

session sessentity { }

extend session sessentity { }


val declare_table :
  string ->
  (string, string) Hashtbl.t ->
  unit
val declare_translations :
  string ->
  (string * string) list ->
  unit
val same : string -> string * string





type storage = [ `LocalStorage | `Cookie | `Temp ]

val set : ?set:storage -> StringCompat.StringMap.key -> unit
val get : unit -> string option

val s_ : string -> string
val pcdata_s :
  string -> [> `PCDATA ] Tyxml_js.Html5.elt

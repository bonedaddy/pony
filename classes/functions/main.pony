class Wombat
    let _name: String
    // undecsore means the field is private and can onyl be accessed in the same type
    var _hunger_level: U64
    var _thirst_level: U64 = 1

    // this constructor creates a wombat that isn't hungry
    new create(name': String) =>
        _name = name'
        _hunger_level = 0

    // this constructor creates a wombat that is hungry
    new hungry(name': String, hunger': U64) =>
        _name = name'
        _hunger_level = hunger'

    // we can also have functions declare with the fun keyword
    // they can have parameters like constructors and also have a result type
    // if no result is given, it defaults to None
    //
    //
    // if you notice none of these functions have a return value
    // this is because by default the return value is the result
    // of the last expression in the function, the value of _hunger_level
    fun hunger(): U64 => _hunger_level

    fun name(): String => _name

    // the `ref` after the `fun` keyword is a "reference capability"
    // it means the receiver (the object on which set_hunger is being called)
    // also has to be a ref type. A ref type is a reference type meaning
    // the object is mutable
    // 
    // we need this because we are setting the value of _hunger_level
    // the default receiver method if none is specified, as in the `hugner` function
    // is `box` which means i can read from this but lot right
    //
    // the `0` in `to: U64 = 0` indicates that this is the default argument
    //
    // in this case the returned value will be 0 regardless of what value `_hunger_level` is
    // this is pretty fucking weird but is called destructive read
    fun ref set_hunger(to: U64 = 0) => _hunger_level = to

// main start
actor Main

    new create(env: Env) => 
        let defaultWombat = Wombat("BIRDY")
        env.out.print(defaultWombat.name())
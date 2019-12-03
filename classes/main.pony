// All classes need to start witha capital letter and are composed of:
//  * Fields
//  * Constructors
//  * Functions
//
// There are three kinds of fields:
//  * var fields
//      * can be assigned repeatedly
//  * let fields
//      * can only be assigned to in the constructor
//  * embed fields
//
//
// The usage of ' in argument names is called a prime and says
// this is another one of these but not hte same and is jsut a convenience
class Wombat
    let name: String
    // undecsore means the field is private and can onyl be accessed in the same type
    var _hunger_level: U64
    var _thirst_level: U64 = 1

    // this constructor creates a wombat that isn't hungry
    new create(name': String) =>
        name = name'
        _hunger_level = 0

    // this constructor creates a wombat that is hungry
    new hungry(name': String, hunger': U64) =>
        name = name'
        _hunger_level = hunger'
    /*
        We have a few ways to call:
        
        this invokes the create method by default:

            let defaultWombat = Wombat("Poop")

        this invokes the hungry method:

            let hungryWombat = Wombat.hungry("Nomsbat", 12) 
    */


// We can also have zero argument constructors
// the cool thing with this is that when constructing
// instances of classes with zero argument constructors
// they can be constructors with just the class name
class Owl
    var _hunger_level: U64

    new create() => 
        _hunger_level = 42

class Hawk
    var _hunger_level: U64 = 0


class Forest
    let _owl: Owl = Owl
    let _hawk: Hawk = Hawk


// main start
actor Main

    new create(env: Env) => 

        env.out.print("sup bro")
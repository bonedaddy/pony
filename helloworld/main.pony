// this is a type declaration, in this case we are declaring type actor
// in pony, actors can have asynchronous methods called behaviors, while classes cant
//
// all pony programs must have a Main actor
actor Main

    // this is a constructor, and the keyword new indicates its a function
    // which creates a new instance of the type
    //
    // in this case it crease a new main
    //
    // in pony a constructor has names, and there can be more than one way
    // to construct an instance of a type. In this case, the constructor
    // is called `create`.
    new create(env: Env) =>

        // lookup the field `out` on our `env` object.
        // this particular field represents `stdout`.
        // we then call the `print`method on `out`
        //
        // What is `Env`? its the "environment" the progrma was invoked with
        env.out.print("Hello, world!")
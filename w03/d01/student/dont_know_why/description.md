## Part 1

```ruby
module AppName                    # 1.  What is `AppName` and why do we use it? `AppName` is the CamelCased title of the module used to run a set of commands in server.rb.
  class Server < Sinatra::Base    # 2.  What is `Server`? `Server` is the subclass of commands inheriting from the superclass, Sinatra.
                                  # 3.  What is `Sinatra`? Sinatra is the rack the module on which the module is running.
                                  # 4.  What is `Base`?

    enable :logging               # 5.  What is `enable`? `enable` is an array.
    get('/') do                   # 6.  What is `get`? `get` is the starting line of a block.
                                  # 7.  What are the three inputs of `get`? logger.info, logger.error, $stderr.puts

      $stderr.puts "We have an error."       # 8.  In Sinatra where does $stderr
                                             #     print to? The command line.
      logger.error "We have an error."       # 9.  What is `logger`? `logger` is the program (class).
                                             # 10. What is `error`? `error` is the response to the command.
                                             # 11. Where does `logger` print to? The command line
                                             # 12. How is the logger print out
                                             #     different from $stderr? $stderr prints to the user in the browser, while logger prints to the command line only.
      logger.info  "Made to: #{request.url}" # 13. What is the difference btwn
                                             #     `logger.error` and
                                             #     `logger.info`? `logger.error` gives the designated output statement. `logger.info` gives info on where the error happened, i.e. localhost:3000.
                                             # 14. What is `request`? request is linked to the rack, Sinatra.
                                             # 15. What does `request`
                                             #     represent? `request` represents the ask to access the required files.
                                             # 16. What is `url`?

      status 200                  # 17. What is `status`? `status` is the code used to determine how the file will run.
                                  # 18. What is `status` called on; ie, where
                                  #     are we? `status` is called on the if/else statement below it.
                                  # 19. What does 200 represent? 200 for no errors vs a 400 error.

      # Test the below with the two requests:
      #   - curl http://localhost:3000?key=value
      #   - curl http://localhost:3000

      if request.params.length != 0         # 20. What is `params`? `params` is the parameters inputted by the user
                                            # 21. What does `params` return? It returns the length of the params.
                                            # 22. What does it represent? It represents the number inputted in the key=value.
        body "The request's params were: '#{request.params}'.\n"
                                            # 23. What is `body`? `body` is what appears on the webpage to the user.
                                            # 24. What does it represent? It's represents the positioning of information, versus up on the tab, or in the header format.
      else
        "Empty request params\n"            # 25. Why don't we call `body` here? Since it is inside the if/else condition, we do not need to designate it twice.
      end
    end
  end
end
```

1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.

## Part 2

```ruby
require 'sinatra/base'      # 1.  What is the purpose of this line? This line is used to call on a certain method of sinatra(rack).
                            # 2.  What does 'sinatra/base' refer to? See above.
                            # 3.  Where is 'sinatra/base'? It is built into Ruby.
require_relative './server' # 4.  Why are we using `require_relative`? We use `requre_relative` to call on the methods in an outside file.
                            # 5.  What does './server' refer to? It refers to server.rb within the same folder.
                            # 6.  What type of path is './server'? See above.
run AppName::Server         # 7.  What is `run`? `run` is a rack command.
                            # 8.  What is `AppName::Server`? It is a command to implement the module.
                            # 9.  Where did `AppName::Server` come from? `AppName` refers to the module in server.rb, while Server refers to server.rb.
                            # 10. Where did `run` come from? `run` came from a dictionary of Ruby/Rack commands.
```

1.
1.
1.
1.
1.
1.
1.
1.
1.
1.

## Bonus

```bash
rackup -p 3000 # 1.  What is `rackup`?
               # 2.  What does the -p 3000 mean?
               # 3.  Are there other options than -p?
               # 4.  Where does `rackup` come from (what Gem does it come with)?
               # 5.  What is the code for `rackup`?
               #     (hint: `sudo find ~ -iname "rackup"`)
               # 6.  What does `#!/usr/bin/env ruby` mean?
```

1.
1.
1.
1.
1.
1.

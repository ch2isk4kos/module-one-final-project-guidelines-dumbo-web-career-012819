require_relative '../config/environment'
# require_relative '../lib/models/user.rb'
# require_relative '../lib/models/review.rb'
# require_relative '../lib/models/wine.rb'
# require_relative '../db/seeds.rb'
# require_relative 'active-record'
# require_relative 'tty-prompt'

ActiveRecord::Base.logger = nil
ActiveSupport::Deprecation.silenced = true




#----------------- Welcomes User --------------------#
def greeting






    # prompt = TTY::Prompt.new

    sleep(0.3)
    puts "██████╗██████╗ ██╗   ██╗██████╗ ██████╗ ██╗   ██╗    ██╗    ██╗██╗███╗   ██╗███████╗".red

    sleep(0.3)
    puts "██╔════╝██╔══██╗██║   ██║██╔══██╗██╔══██╗╚██╗ ██╔╝    ██║    ██║██║████╗  ██║██╔════╝".red

    sleep(0.3)
    puts "██║     ██████╔╝██║   ██║██║  ██║██║  ██║ ╚████╔╝     ██║ █╗ ██║██║██╔██╗ ██║█████╗ ".red

    sleep(0.3)
    puts "██║     ██╔══██╗██║   ██║██║  ██║██║  ██║  ╚██╔╝      ██║███╗██║██║██║╚██╗██║██╔══╝  ".red

    sleep(0.3)
    puts "╚██████╗██║  ██║╚██████╔╝██████╔╝██████╔╝   ██║       ╚███╔███╔╝██║██║ ╚████║███████╗".red

    sleep(0.3)
    puts "╚═════╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═════╝    ╚═╝        ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚══════╝".red

    # prompt.ask("What is your name?")
   puts "Welcome to the Cruddy Wine App!"


end

#------------------- Exit Program -----------------------#
def exit_program
    exit
end


#------------------- Main Menu ----------------------#
def first_menu

    current_user = User.create_user



    prompt = TTY::Prompt.new
    options = [
        {"My Reviews" => -> do current_user.retrieve_reviews end},
        {"All Wines" => -> do Wine.get_list_of_wines end},
        {"All Reviews" => -> do Review.get_list_of_reviews end},
        {"Create Reviews" => -> do current_user.create_review end},
        {"Update User" => -> do current_user.update_user end},
        {"Update Reviews" => -> do current_user.update_review end},
        {"Delete Account" => -> do current_user.delete_user end},
        {"Exit" => -> do exit_program end}
    ]
    prompt.select("", options, per_page: 10)


end

#------------------- Second Menu ----------------------#
def second_menu(input_user, input_email)


    current_user = User.find_by(name: input_user, email: input_email)

    prompt = TTY::Prompt.new
    options = [
        {"My Reviews" => -> do current_user.retrieve_reviews end},
        {"All Wines" => -> do Wine.get_list_of_wines end},
        {"All Reviews" => -> do Review.get_list_of_reviews end},
        {"Create Reviews" => -> do current_user.create_review end},
        {"Update Reviews" => -> do current_user.update_review end},
        {"Update User" => -> do current_user.update_user end},
        {"Display User Info" => -> do current_user.retrieve_user end},
        {"Delete Account" => -> do current_user.delete_user end},
        {"Exit" => -> do exit_program end}
    ]
    prompt.select("", options, per_page: 10)


end

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
    sleep(0.5)
    # prompt = TTY::Prompt.new
    puts "
 ▄████▄   ██▀███   █    ██ ▓█████▄ ▓█████▄▓██   ██▓    █     █░ ██▓ ███▄    █ ▓█████
▒██▀ ▀█  ▓██ ▒ ██▒ ██  ▓██▒▒██▀ ██▌▒██▀ ██▌▒██  ██▒   ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▓█   ▀
▒▓█    ▄ ▓██ ░▄█ ▒▓██  ▒██░░██   █▌░██   █▌ ▒██ ██░   ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒▒███
▒▓▓▄ ▄██▒▒██▀▀█▄  ▓▓█  ░██░░▓█▄   ▌░▓█▄   ▌ ░ ▐██▓░   ░█░ █ ░█ ░██░▓██▒  ▐▌██▒▒▓█  ▄
▒ ▓███▀ ░░██▓ ▒██▒▒▒█████▓ ░▒████▓ ░▒████▓  ░ ██▒▓░   ░░██▒██▓ ░██░▒██░   ▓██░░▒████▒
░ ░▒ ▒  ░░ ▒▓ ░▒▓░░▒▓▒ ▒ ▒  ▒▒▓  ▒  ▒▒▓  ▒   ██▒▒▒    ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒ ░░ ▒░ ░
  ░  ▒     ░▒ ░ ▒░░░▒░ ░ ░  ░ ▒  ▒  ░ ▒  ▒ ▓██ ░▒░      ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ░  ░
░          ░░   ░  ░░░ ░ ░  ░ ░  ░  ░ ░  ░ ▒ ▒ ░░       ░   ░   ▒ ░   ░   ░ ░    ░
░ ░         ░        ░        ░       ░    ░ ░            ░     ░           ░    ░  ░
░                           ░       ░      ░ ░
"
    # prompt.ask("What is your name?")
   puts "Welcome to the Cruddy Wine App!"


end

#------------------- Exit Program -----------------------#
def exit_program

end


#------------------- Main Menu ----------------------#
def first_menu

    current_user = User.create_user


    prompt = TTY::Prompt.new
    options = [
        {"My Reviews" => -> do current_user.retrieve_reviews end},
        {"Create Reviews" => -> do current_user.create_review end},
        {"Update User" => -> do current_user.update_user end},
        {"Update Reviews" => -> do current_user.update_review end},
        {"Delete Account" => -> do current_user.delete_user end},
        {"Exit" => -> do exit_program end}
    ]
    prompt.select("", options, per_page: 10)


end

#------------------- Second Menu ----------------------#
def second_menu(current_user)

    current_user = self


    prompt = TTY::Prompt.new
    options = [
        {"My Reviews" => -> do current_user.retrieve_reviews end},
        {"Create Reviews" => -> do current_user.create_review end},
        {"Update User" => -> do current_user.update_user end},
        {"Update Reviews" => -> do current_user.update_review end},
        {"Delete Account" => -> do current_user.delete_user end},
        {"Exit" => -> do exit_program end}
    ]
    prompt.select("", options, per_page: 10)


end

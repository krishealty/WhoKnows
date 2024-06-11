module WhoKnows
  class Redirect
    # Checks for redirect and adds redirection target URL to Scanner
    def initialize(target, scanner, max_redirects)
      redirect_url = target.get_redirection_target
      return if redirect_url.nil?

      if target.redirect_counter >= max_redirects
        error("ERROR Too many redirects: #{target} => #{redirect_url}")
        return
      end

      # pp target.redirect_counter, redirect_url
      puts "redirect #{target.redirect_counter + 1} from #{target.target} to #{redirect_url}" if $verbose > 1
      scanner.add_target(redirect_url, target.redirect_counter + 1)
    end
  end
end

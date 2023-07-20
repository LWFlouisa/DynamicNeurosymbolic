# There are three quadrants: each quandrant contains a sleep and wake cycle.
# Sleep cycle is the learning portion of each quadrant, or where datasets are stored.
# Wake cycle uses what it's learned to come up with a result.
# Each quandrant switches back to the sleep cycle, when switch to a new quandrant.
# Switching between quandrants is based on a day / night cycle.
# (1. There are day time creatures who wind up during the day.
# (2. There are night time creatures who wind up during the night.

module Dayshift
  class FirstQuadrant
    attr_accessor :state

    def initialize
      state = "sleep"
    end

    # Creates new datasets to use.
    def sleep_activities
      # Make sure that story elements are kept on seperate lines.
      character_fate = File.readlines("_narratives/outcomes/character_fates.txt")
      dating_outcome = File.readlines("_narratives/outcomes/dating_outcomes.txt")

      # Imagined a compromise path that is neither ideal or tragic.
      open("_imaginedpath/outcomes/nuetral_outcome.txt", "w") { |f|
        segment_1 = character_fate[1].strip
        segment_2 = dating_outcome[0].strip

        f.puts "#{segment_1} #{segment_2}"
      }
    end

    # Uses datasets in a cryptographic like architecture.
    def wake_activities
      input = File.read("_imaginedpath/outcomes/nuetral_outcome.txt").strip.to_s

      outcomes = {
        ## Worst Outcome
        "[ charlotte dies ] [ never dated player ]" => "BIANCA >> Charlotte died before the player ever met her.",

        ## Nuetral Outcome
        "[ charlotte dies ] [ dated player ]" => "BIANCA >> Charlotte had met the player previously, but player failed to rescue her.",
        "[ charlotte lives ] [ never dated player ]" => "BIANCA >> Although Charlotte wasn't executed, player was never in a situation to meet her.",

        ## Best Outcome
        "[ charlotte lives ] [ dated player ]" => "BIANCA >> Charlotte met the player before and eventually they date and become permanent room mates.",
      }

      current_outcome = outcomes[input].to_s

      print "#{current_outcome} "
    end

    def transition
      case state

      when "sleep"
        sleep_activities

        sleep(1)

        @state = "wake"
      when "wake"
        wake_activities

        sleep(1)

        @state = "sleep"
      end
    end
  end

  class SecondQuadrant
    attr_accessor :state

    def initialize
      state = "sleep"
    end

    # Creates new datasets to use.
    def sleep_activities
      # Make sure that story elements are kept on seperate lines.
      character_fate = File.readlines("_narratives/outcomes/character_fates.txt")
      dating_outcome = File.readlines("_narratives/outcomes/dating_outcomes.txt")

      # Imagined a compromise path that is neither ideal or tragic.
      open("_imaginedpath/outcomes/nuetral_outcome.txt", "w") { |f|
        segment_1 = character_fate[1].strip
        segment_2 = dating_outcome[0].strip

        f.puts "#{segment_1} #{segment_2}"
      }
    end

    # Uses datasets in a cryptographic like architecture.
    def wake_activities
      input = File.read("_imaginedpath/outcomes/nuetral_outcome.txt").strip.to_s

      outcomes = {
        ## Worst Outcome
        "[ charlotte dies ] [ never dated player ]" => "BIANCA >> Charlotte died before the player ever met her.",

        ## Nuetral Outcome
        "[ charlotte dies ] [ dated player ]" => "BIANCA >> Charlotte had met the player previously, but player failed to rescue her.",
        "[ charlotte lives ] [ never dated player ]" => "BIANCA >> Although Charlotte wasn't executed, player was never in a situation to meet her.",

        ## Best Outcome
        "[ charlotte lives ] [ dated player ]" => "BIANCA >> Charlotte met the player before and eventually they date and become permanent room mates.",
      }

      current_outcome = outcomes[input].to_s

      print "#{current_outcome} "
    end

    def transition
      case state

      when "sleep"
        sleep_activities

        sleep(1)

        @state = "wake"
      when "wake"
        wake_activities

        sleep(1)

        @state = "sleep"
      end
    end
  end

  class ThirdQuadrant
    attr_accessor :state

    def initialize
      state = "sleep"
    end

    # Creates new datasets to use.
    def sleep_activities
      # Make sure that story elements are kept on seperate lines.
      character_fate = File.readlines("_narratives/outcomes/character_fates.txt")
      dating_outcome = File.readlines("_narratives/outcomes/dating_outcomes.txt")

      # Imagined a compromise path that is neither ideal or tragic.
      open("_imaginedpath/outcomes/nuetral_outcome.txt", "w") { |f|
        segment_1 = character_fate[1].strip
        segment_2 = dating_outcome[0].strip

        f.puts "#{segment_1} #{segment_2}"
      }
    end

    # Uses datasets in a cryptographic like architecture.
    def wake_activities
      input = File.read("_imaginedpath/outcomes/nuetral_outcome.txt").strip.to_s

      outcomes = {
        ## Worst Outcome
        "[ charlotte dies ] [ never dated player ]" => "BIANCA >> Charlotte died before the player ever met her.",

        ## Nuetral Outcome
        "[ charlotte dies ] [ dated player ]" => "BIANCA >> Charlotte had met the player previously, but player failed to rescue her.",
        "[ charlotte lives ] [ never dated player ]" => "BIANCA >> Although Charlotte wasn't executed, player was never in a situation to meet her.",

        ## Best Outcome
        "[ charlotte lives ] [ dated player ]" => "BIANCA >> Charlotte met the player before and eventually they date and become permanent room mates.",
      }

      current_outcome = outcomes[input].to_s

      print "#{current_outcome} "
    end

    def transition
      case state

      when "sleep"
        sleep_activities

        sleep(1)

        @state = "wake"
      when "wake"
        wake_activities

        sleep(1)

        @state = "sleep"
      end
    end
  end
end

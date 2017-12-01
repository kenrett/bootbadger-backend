Boot.destroy_all

happy_words = ["captivated",
              "charmed",
              "ecstatic",
              "elated",
              "enchanted",
              "entranced",
              "excited",
              "fulfilled",
              "gladdened",
              "gratified",
              "joyous",
              "jubilant",
              "overjoyed",
              "pleasantly surprised",
              "pleased",
              "thrilled"
            ]

boots = ["Jenna",
        "Livy",
        "Shann",
        "Kenn",
        "Loraine",
        "Ally",
        "James",
        "Hunter",
        "Caroline",
        "Matthew",
        "May",
        "Sar",
        "Kam",
        "Anthony",
        "Shambhavi",
        "Quynh", 
        "Josh",
        "Dillon",
        "Joe",  
        "Roger",
        "Rebekah", 
        "Ken", 
        "Mark"
      ]

boots.each do |boot|
  Boot.create!(name: boot.chomp)
  puts "#{boot.chomp} will be #{happy_words.sample}!"
end

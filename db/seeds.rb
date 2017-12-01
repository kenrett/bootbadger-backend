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
        "Olivia",
        "Shannon",
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

boots.each_with_index do |boot, i|
  Boot.create!(name: boot.chomp, password: "password", email: "boot#{i}@boot.com")
  puts "#{boot.chomp} will be #{happy_words.sample}!"
end

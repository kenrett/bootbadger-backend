Boot.destroy_all

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
  Boot.create!(name: boot.chomp)
end

Boot.destroy_all

boots = {"Jenna" => 'https://dbc-backoffice-production.s3.amazonaws.com/profile_images/5687.jpeg',
        "Olivia" => 'https://avatars7.githubusercontent.com/u/30182438?v=4',
        "Shannon" => 'https://avatars5.githubusercontent.com/u/30235739?v=4',
        "Kenn" => 'https://avatars3.githubusercontent.com/u/7684289?v=3',
        "Lorraine" => 'https://dbc-backoffice-production.s3.amazonaws.com/profile_images/5922.jpeg',
        "Ally" => 'https://avatars0.githubusercontent.com/u/19180733?s=460&v=4',
        "James" => 'https://avatars.githubusercontent.com/u/10890778?v=3',
        "Hunter" => 'https://avatars.githubusercontent.com/u/5349292?v=3',
        "Caroline" => 'https://dbc-backoffice-production.s3.amazonaws.com/profile_images/5421.jpeg',
        "Matthew" => 'https://dbc-backoffice-production.s3.amazonaws.com/profile_images/6270.png',
        "May" => 'https://dbc-backoffice-production.s3.amazonaws.com/profile_images/4940.jpeg',
        "Sar" => 'https://dbc-backoffice-production.s3.amazonaws.com/profile_images/4914.jpeg',
        "Kam" => 'https://dbc-backoffice-production.s3.amazonaws.com/profile_images/6146.png',
        "Anthony" => 'https://avatars.githubusercontent.com/u/23344525?v=3',
        "Shambhavi" => 'https://avatars.githubusercontent.com/u/5216008?v=3',
        "Quynh" => 'https://dbc-backoffice-production.s3.amazonaws.com/profile_images/6116.jpeg',
        "Josh" => 'https://avatars1.githubusercontent.com/u/4044653?v=3',
        "Dillon" => 'https://dbc-backoffice-production.s3.amazonaws.com/profile_images/5354.jpeg',
        "Joe" => 'https://avatars2.githubusercontent.com/u/21271209?v=3',
        "Roger" => '',
        "Rebekah" => 'https://i.imgur.com/VouiqPp.jpg',
        "Ken" => 'https://avatars.githubusercontent.com/u/2986627?v=3',
        "Mark" => 'https://avatars.githubusercontent.com/u/856491?v=3'
      }

boots.each do |boot, img|
  Boot.create!(name: boot.chomp, img_url: img)
end

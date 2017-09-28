# coding: utf-8

User.create(:email => '1@gmail.com', :password => 'tryfunds', :sign_in_count => 100, image: open("#{Rails.root}/db/data/seed1.png"), :username => '跳ぶよ？', :simpleintroduce => 'リトバス好きの跳ぶよです', :introduction => '跳ぶよです。リトバス他様々なゲームやアニメが大好きです。イラストは基本的に厚塗りです。')
User.create(:email => '2@gmail.com', :password => 'tryfunds', :sign_in_count => 100, image: open("#{Rails.root}/db/data/seed9.png"), :username => 'Keito', :simpleintroduce => 'keito好きのKeitoです', :introduction => '俺は絵に興味はありません。')
User.create(:email => '3@gmail.com', :password => 'tryfunds', :sign_in_count => 100, image: open("#{Rails.root}/db/data/seed3.png"), :username => '河内りん', :simpleintroduce => 'タオルケット好きの河内りんです', :introduction => 'タオルケットはじめ、Fate/zeroなどのソシャゲにはまっています。タオルケットクラスタ募集！')
User.create(:email => '4@gmail.com', :password => 'tryfunds', :sign_in_count => 100, image: open("#{Rails.root}/db/data/seed4.png"), :username => 'たかし', :simpleintroduce => 'たかしです', :introduction => '俺は絵に興味はありません。')
User.create(:email => '5@gmail.com', :password => 'tryfunds', :sign_in_count => 100, image: open("#{Rails.root}/db/data/seed5.png"), :username => 'FMFM5757', :simpleintroduce => 'FMFM5757は架空のイラストレーターです', :introduction => '俺は絵に興味はありません。')
User.create(:email => '6@gmail.com', :password => 'tryfunds', :sign_in_count => 100, image: open("#{Rails.root}/db/data/seed6.png"), :username => 'redjuice', :simpleintroduce => 'redjuiceは架空のイラストレーターです', :introduction => '俺は絵に興味はありません。')
User.create(:email => '7@gmail.com', :password => 'tryfunds', :sign_in_count => 100, image: open("#{Rails.root}/db/data/seed7.png"), :username => 'トモセシュンサク', :simpleintroduce => 'トモセシュンサクは架空のイラストレーターです', :introduction => '俺は絵に興味はありません。')
User.create(:email => '8@gmail.com', :password => 'tryfunds', :sign_in_count => 100, image: open("#{Rails.root}/db/data/seed8.png"), :username => 'カントク', :simpleintroduce => 'カントクは架空のイラストレーターです', :introduction => '俺は絵に興味はありません。')
User.create(:email => '9@gmail.com', :password => 'tryfunds', :sign_in_count => 100, image: open("#{Rails.root}/db/data/seed2.png"), :username => 'Na-Ga', :simpleintroduce => 'Na-Gaは架空のイラストレーターです', :introduction => '俺は絵に興味があります。')


Lesson.create(:title => '厚塗り講座', :simple_description => '厚塗り講座です', :detail_description => 'もっと厚塗りうまくなりましょうよ！', price: '1000')
Lesson.create(:title => 'アニメ塗り講座', :simple_description => 'アニメ塗り講座です', :detail_description => 'もっと厚塗りうまくなりましょうよ！', price: '1000')
Lesson.create(:title => '線画講座', :simple_description => '線画講座です', :detail_description => 'もっと厚塗りうまくなりましょうよ！', price: '1000')
Lesson.create(:title => '練習法講座', :simple_description => '練習法講座です', :detail_description => 'もっと厚塗りうまくなりましょうよ！', price: '1000')
Lesson.create(:title => 'ポーズ練習講座', :simple_description => 'ポーズ練習講座です', :detail_description => 'もっと厚塗りうまくなりましょうよ！', price: '1000')
Lesson.create(:title => '添削講座', :simple_description => '添削講座です', :detail_description => 'もっと厚塗りうまくなりましょうよ！', price: '1000')
Lesson.create(:title => 'イラスト添削講座', :simple_description => 'イラスト添削講座です', :detail_description => 'もっと厚塗りうまくなりましょうよ！', price: '1000')
Lesson.create(:title => '講座', :simple_description => '講座です', :detail_description => 'もっと厚塗りうまくなりましょうよ！', price: '1000')
Lesson.create(:title => 'たべもの講座', :simple_description => 'たべもの講座です', :detail_description => 'もっと厚塗りうまくなりましょうよ！', price: '1000')
Lesson.create(:title => '政治講座', :simple_description => '政治講座です', :detail_description => 'もっと厚塗りうまくなりましょうよ！', price: '1000')
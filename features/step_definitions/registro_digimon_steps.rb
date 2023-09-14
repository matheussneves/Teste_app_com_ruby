Dado("que esteja na tela inicial do aplicativo") do
    id('digimon_list').displayed?
    id('action_insert_digimon').displayed?
end

Quando("iniciar um cadastro de digimon") do
    id('action_insert_digimon').click
end

Quando("preencher todas suas informaçoes e salvar") do
    id('picture').click
    text('Photos').click
    text('Camera').click
    id('Photo taken on Jul 10, 2018 5:47:56 PM.').click

    id('name').send_keys "ThialisonMon"
    id('level').click
    ele_index('android.widget.CheckedTextView', rand(1..7)).click
    id('type').click
    ele_index('android.widget.CheckedTextView', rand(1..5)).click
    id('action_insert').click
end

Então("vou visualizar o digimon cadastrado") do
    id('name').displayed?
    fail 'Digimon não encontrado' unless id('name').text.eql? "ThialisonMon"
end
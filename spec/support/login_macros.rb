module LoginMacros
  def login(user)
    visit admin_login_identifier_path
    fill_in 'Username', with: user.name
    click_button '次へ'
    fill_in 'Password', with: user.password
    click_button 'ログイン'
  end
end

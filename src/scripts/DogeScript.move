address 0xf8af03dd08de49d81e4efd9e24c039cc {
module DogeScript {
    use 0x1::Account;
    use 0x1::Signer;
    use 0xf8af03dd08de49d81e4efd9e24c039cc::Doge;

    public(script) fun mint_script(account: signer, amount: u128) {
        let is_accept_token = Account::is_accepts_token<Doge::SHIBA>(Signer::address_of(&account));
        if (!is_accept_token) {
            Account::do_accept_token<Doge::SHIBA>(&account);
        };
        let token = Doge::mint(amount);
        Account::deposit_to_self(&account, token);
    }

    public(script) fun initialize_script(account: signer) {
        Doge::initialize(&account);
    }
}
}
    
//! account: alice ,0xf8af03dd08de49d81e4efd9e24c039cc, 20000000000 0x1::STC::STC
//! account: bob,1 0x1::STC::STC
//! sender: alice
address alice = {{alice}};
script {
    use 0x1::Token;
    use 0xf8af03dd08de49d81e4efd9e24c039cc::Doge;
use 0xf8af03dd08de49d81e4efd9e24c039cc::DogeScript;
    fun test_init(sender: signer) {
        DogeScript::initialize_script( sender);
        let market_cap = Token::market_cap<Doge::SHIBA>();
        assert(market_cap == 0, 8001);
        assert(Token::is_registered_in<Doge::SHIBA>(@alice), 8002);
    }
}
// check: "Keep(EXECUTED)"
//! new-transaction
//! sender: bob
address bob = {{bob}};
script {
    use 0x1::Account;
    use 0xf8af03dd08de49d81e4efd9e24c039cc::Doge;

    use 0xf8af03dd08de49d81e4efd9e24c039cc::DogeScript;

    fun test_mint(sender: signer) {
        DogeScript::mint_script(sender,100000);
        let balance = Account::balance<Doge::SHIBA>(@bob);
        assert(100000 == balance, 1);
    }
}
// check: "Keep(EXECUTED)"


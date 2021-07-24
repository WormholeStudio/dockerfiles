address 0xf8af03dd08de49d81e4efd9e24c039cc {
module RedPackageScript {

    use 0xf8af03dd08de49d81e4efd9e24c039cc::RedPackage;

    public(script) fun create_script<TokenType: store>
    (account: signer,
     root: vector<u8>,
     amount: u128,
     leafs: vector<u128>)
    {
        RedPackage::create<TokenType>(&account, root, amount, leafs);
    }

    public(script) fun claim_script<TokenType: store>
    (account: signer,
     owner_address: address,
     root: vector<u8>
    ) {
        RedPackage::claim<TokenType>(&account, owner_address, root);
    }

    public(script) fun cancel_all_script<TokenType: store>
    (account: signer
    ) {
        RedPackage::cancel_all<TokenType>(&account);
    }
}
}
    
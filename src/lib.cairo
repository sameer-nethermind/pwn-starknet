mod config {
    mod interface;
    mod pwn_config;
}

mod hub {
    pub mod interface;
    mod pwn_hub;
    mod pwn_hub_tags;
}

mod interfaces {
    pub mod pool_adapter;
}

mod loan {
    pub mod lib {
        pub mod fee_calculator;
        pub mod signature_checker;
    }

    pub mod terms {
        pub mod simple {
            pub mod loan {
                mod interface;
                mod pwn_simple_loan;
                pub mod types;
            }

            pub mod proposal {
                mod simple_loan_dutch_auction_proposal;
                mod simple_loan_fungible_proposal;
                mod simple_loan_list_proposal;
                mod simple_loan_proposal;
                mod simple_loan_simple_proposal;
            }
        }
    }

    mod vault {
        pub mod permit;
    }
}

mod multitoken {
    pub mod library;
}

mod nonce {
    mod revoked_nonce;
}

mod token {
    mod pwn_loan;
}

mod vault {
    mod pwn_vault;
}

impl ContractAddressDefault of Default<starknet::ContractAddress> {
    #[inline(always)]
    fn default() -> starknet::ContractAddress nopanic {
        starknet::contract_address_const::<0>()
    }
}
mod config {
    pub mod interface;
    mod pwn_config;
}

mod hub {
    pub mod pwn_hub;
    pub mod pwn_hub_tags;
}

mod interfaces {
    pub mod fingerprint_computer;
    pub mod pool_adapter;
}

mod loan {
    pub mod lib {
        pub mod fee_calculator;
        pub mod math;
        pub mod merkle_proof;
        pub mod serialization;
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
                pub mod simple_loan_dutch_auction_proposal;
                mod simple_loan_fungible_proposal;
                mod simple_loan_list_proposal;
                mod simple_loan_proposal;
                mod simple_loan_simple_proposal;
            }
        }
    }

    mod token {
        mod pwn_loan;
    }

    mod vault {
        pub mod permit;
        mod pwn_vault;
    }
}

mod multitoken {
    pub mod category_registry;
    pub mod library;
}

mod nonce {
    pub mod revoked_nonce;
}

impl ContractAddressDefault of Default<starknet::ContractAddress> {
    #[inline(always)]
    fn default() -> starknet::ContractAddress nopanic {
        starknet::contract_address_const::<0>()
    }
}

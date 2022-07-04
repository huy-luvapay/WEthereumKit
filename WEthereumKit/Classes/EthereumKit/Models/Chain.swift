import Foundation

public struct Chain {
    public let name: String
    public let id: Int
    public let coinType: UInt32
    public let syncInterval: TimeInterval
    public let isEIP1559Supported: Bool
    public var rpcURL: String
    public var txBaseUrl: String
    public var apiKey: String
    public var symbol: String
    
    public func checkExistChain(chain: Chain) -> Bool {
        if(chain.id == self.id && chain.rpcURL == self.rpcURL && chain.txBaseUrl == self.txBaseUrl && chain.symbol == self.symbol) {
            return true
        }
        return false
    }

    public init(name: String, id: Int, coinType: UInt32, syncInterval: TimeInterval, isEIP1559Supported: Bool, rpcURL: String = "", txBaseUrl: String = "", apiKey: String = "", symbol: String = "") {
        self.name = name
        self.id = id
        self.coinType = coinType
        self.syncInterval = syncInterval
        self.isEIP1559Supported = isEIP1559Supported
        self.rpcURL = rpcURL
        self.txBaseUrl = txBaseUrl
        self.apiKey = apiKey
        self.symbol = symbol
    }

    public var isMainNet: Bool {
        coinType != 1
    }
    
}

extension Chain: Equatable {

    public static func ==(lhs: Chain, rhs: Chain) -> Bool {
        lhs.id == rhs.id
    }

}

extension Chain {

    public static var ethereum: Chain {
        Chain(
                name: "Ethereum",
                id: 1,
                coinType: 60,
                syncInterval: 15,
                isEIP1559Supported: true
        )
    }

    public static var binanceSmartChain: Chain {
        Chain(
                name: "Binance Smart Chain",
                id: 56,
                coinType: 60, // actually Binance Smart Chain has coin type 9006
                syncInterval: 15,
                isEIP1559Supported: false
        )
    }

    public static var polygon: Chain {
        Chain(
                name: "Polygon",
                id: 137,
                coinType: 60, // actually Matic has coin type 966
                syncInterval: 15,
                isEIP1559Supported: true
        )
    }

    public static var optimism: Chain {
        Chain(
                name: "Optimism",
                id: 10,
                coinType: 60, // actually Optimism has coin type 614
                syncInterval: 15,
                isEIP1559Supported: false
        )
    }

    public static var arbitrumOne: Chain {
        Chain(
                name: "ArbitrumOne",
                id: 42161,
                coinType: 60, // actually Arbitrum One has coin type 9001
                syncInterval: 15,
                isEIP1559Supported: false
        )
    }

    public static var ethereumRopsten: Chain {
        Chain(
                name: "Ethereum Ropsten",
                id: 3,
                coinType: 1,
                syncInterval: 15,
                isEIP1559Supported: true
        )
    }

    public static var ethereumKovan: Chain {
        Chain(
                name: "Ethereum Kovan",
                id: 42,
                coinType: 1,
                syncInterval: 15,
                isEIP1559Supported: true
        )
    }

    public static var ethereumRinkeby: Chain {
        Chain(
                name: "Ethereum rinkeby",
                id: 4,
                coinType: 1,
                syncInterval: 15,
                isEIP1559Supported: true
        )
    }

    public static var ethereumGoerli: Chain {
        Chain(
                name: "Ethereum Goerli",
                id: 5,
                coinType: 1,
                syncInterval: 15,
                isEIP1559Supported: true
        )
    }

}

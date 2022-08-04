import BigInt

class GetWalletWatchAssetJsonRpc: JsonRpc<BigUInt> {

    init(address: Address, defaultBlockParameter: DefaultBlockParameter) {
        super.init(
                method: "wallet_watchAsset",
                params: [address.hex, defaultBlockParameter.raw, ["type": "ERC20"], "options": ["address": "0xB8c77482e45F1F44dE1745F52C74426C631bDD52", "symbol": "BNB", "decimals": 18, "image": ""]]
        )
    }

    override func parse(result: Any) throws -> BigUInt {
        guard let hexString = result as? String, let value = BigUInt(hexString.stripHexPrefix(), radix: 16) else {
            throw JsonRpcResponse.ResponseError.invalidResult(value: result)
        }

        return value
    }

}

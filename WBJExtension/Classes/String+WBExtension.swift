//
//  String+Extension.swift
//  TNExtension
//
//  Created by WBear on 2022/3/23.
//

import Foundation
import CommonCrypto
import CryptoSwift

extension String {
    
    /// md5 加密
    /// - Returns: 加密后字符串
    public func md5Encrypt() -> String {
        let utf8String = self.cString(using: .utf8)
        let utf8StrLength = CUnsignedInt(self.lengthOfBytes(using: .utf8))
        
        let digest = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digest)
        CC_MD5(utf8String, utf8StrLength, result)
        let hash = NSMutableString()
        for i in 0 ..< digest {
            hash.appendFormat("%02x", result[i])
        }
        result.deinitialize(count: digest)
        return String(format: hash as String)
    }
    
    /// AES加密
    /// - Parameters:
    ///   - key: 密钥
    ///   - padding: 加密类型
    /// - Returns: 加密后字符串
    public func AESEncrypt(key: String, padding: PaddingProtocol) -> String? {
        guard let data = self.data(using: .utf8) else {
            return nil
        }
        do {
            let AES = try AES(key: key.bytes, blockMode: ECB(), padding: .pkcs5)
            let encryptData = try AES.encrypt(data.bytes)
            return encryptData.toBase64()
        }catch {
            return nil
        }
    }
    
    /// 判断手机号
    /// - Returns: 结果
    public func isMatchMobile() -> Bool {
        if self.removeEmpty().count == 11 {
            return true
        }
        return false
    }
    
    /// 去除空格
    public func removeEmpty() -> String {
        return self.replacingOccurrences(of: " ", with: "")
    }
}

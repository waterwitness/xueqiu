.class public Lcom/paic/openapi/demo/util/rsa/RSA;
.super Ljava/lang/Object;
.source "RSA.java"


# static fields
.field public static final CHAR_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field public static final KEY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final KEY_LEANGTH:I = 0x400

.field private static final MAX_DECRYPT_BLOCK:I = 0x80

.field private static final MAX_ENCRYPT_BLOCK:I = 0x75

.field public static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "MD5withRSA"

.field private static final keyFactory:Ljava/security/KeyFactory;

.field private static final keyPairGen:Ljava/security/KeyPairGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/paic/openapi/demo/util/rsa/RSA;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v0

    sput-object v0, Lcom/paic/openapi/demo/util/rsa/RSA;->keyFactory:Ljava/security/KeyFactory;

    .line 27
    invoke-static {}, Lcom/paic/openapi/demo/util/rsa/RSA;->getKeyPairGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v0

    sput-object v0, Lcom/paic/openapi/demo/util/rsa/RSA;->keyPairGen:Ljava/security/KeyPairGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64DecryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paic/openapi/demo/util/rsa/RSA;->decryptByPrivateKey([B[B)[B

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static base64DecryptByPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paic/openapi/demo/util/rsa/RSA;->decryptByPublicKey([B[B)[B

    move-result-object v0

    .line 225
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static base64EncryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paic/openapi/demo/util/rsa/RSA;->encryptByPrivateKey([B[B)[B

    move-result-object v0

    .line 186
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static base64EncryptByPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/paic/openapi/demo/util/rsa/RSA;->base64EncryptByPublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static base64EncryptByPublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paic/openapi/demo/util/rsa/RSA;->encryptByPublicKey([B[B)[B

    move-result-object v0

    .line 276
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decryptByPrivateKey([B[B)[B
    .locals 9

    .prologue
    const/16 v7, 0x80

    const/4 v2, 0x0

    .line 124
    invoke-static {p1, v2, v2}, Lcom/paic/openapi/demo/util/rsa/RSA;->getCipher([BZZ)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 125
    array-length v4, p0

    .line 126
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v0, v2

    .line 130
    :goto_0
    sub-int v6, v4, v0

    if-lez v6, :cond_1

    .line 131
    sub-int v6, v4, v0

    if-le v6, v7, :cond_0

    .line 132
    invoke-virtual {v3, p0, v0, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 136
    :goto_1
    array-length v6, v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 137
    add-int/lit8 v0, v1, 0x1

    .line 138
    mul-int/lit16 v1, v0, 0x80

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    .line 134
    :cond_0
    sub-int v6, v4, v0

    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 141
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 142
    return-object v0
.end method

.method public static decryptByPublicKey([B[B)[B
    .locals 9

    .prologue
    const/16 v7, 0x80

    const/4 v2, 0x0

    .line 194
    const/4 v0, 0x1

    invoke-static {p1, v0, v2}, Lcom/paic/openapi/demo/util/rsa/RSA;->getCipher([BZZ)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 195
    array-length v4, p0

    .line 196
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v0, v2

    .line 200
    :goto_0
    sub-int v6, v4, v0

    if-lez v6, :cond_1

    .line 201
    sub-int v6, v4, v0

    if-le v6, v7, :cond_0

    .line 202
    invoke-virtual {v3, p0, v0, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 206
    :goto_1
    array-length v6, v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 207
    add-int/lit8 v0, v1, 0x1

    .line 208
    mul-int/lit16 v1, v0, 0x80

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    .line 204
    :cond_0
    sub-int v6, v4, v0

    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 211
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 212
    return-object v0
.end method

.method public static encryptByPrivateKey([B[B)[B
    .locals 9

    .prologue
    const/16 v7, 0x75

    const/4 v2, 0x0

    .line 163
    const/4 v0, 0x1

    invoke-static {p1, v2, v0}, Lcom/paic/openapi/demo/util/rsa/RSA;->getCipher([BZZ)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 164
    array-length v4, p0

    .line 165
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v0, v2

    .line 169
    :goto_0
    sub-int v6, v4, v0

    if-lez v6, :cond_1

    .line 170
    sub-int v6, v4, v0

    if-le v6, v7, :cond_0

    .line 171
    invoke-virtual {v3, p0, v0, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 175
    :goto_1
    array-length v6, v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 176
    add-int/lit8 v0, v1, 0x1

    .line 177
    mul-int/lit8 v1, v0, 0x75

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    .line 173
    :cond_0
    sub-int v6, v4, v0

    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 180
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 181
    return-object v0
.end method

.method public static encryptByPublicKey([B[B)[B
    .locals 9

    .prologue
    const/16 v7, 0x75

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 232
    invoke-static {p1, v0, v0}, Lcom/paic/openapi/demo/util/rsa/RSA;->getCipher([BZZ)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 233
    array-length v4, p0

    .line 234
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v0, v2

    .line 238
    :goto_0
    sub-int v6, v4, v0

    if-lez v6, :cond_1

    .line 239
    sub-int v6, v4, v0

    if-le v6, v7, :cond_0

    .line 240
    invoke-virtual {v3, p0, v0, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 244
    :goto_1
    array-length v6, v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 245
    add-int/lit8 v0, v1, 0x1

    .line 246
    mul-int/lit8 v1, v0, 0x75

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    .line 242
    :cond_0
    sub-int v6, v4, v0

    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 249
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 250
    return-object v0
.end method

.method public static getCipher([BZZ)Ljavax/crypto/Cipher;
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 66
    sget-object v3, Lcom/paic/openapi/demo/util/rsa/RSA;->keyFactory:Ljava/security/KeyFactory;

    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 67
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 68
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    move-object v0, v2

    .line 75
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 72
    sget-object v3, Lcom/paic/openapi/demo/util/rsa/RSA;->keyFactory:Ljava/security/KeyFactory;

    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 73
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 74
    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    move-object v0, v2

    .line 75
    goto :goto_1

    :cond_2
    move v0, v1

    .line 74
    goto :goto_2
.end method

.method private static getKeyFactory()Ljava/security/KeyFactory;
    .locals 1

    .prologue
    .line 38
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getKeyPairGenerator()Ljava/security/KeyPairGenerator;
    .locals 2

    .prologue
    .line 51
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 52
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRsaSecurityKey()Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lcom/paic/openapi/demo/util/rsa/RSA;->initKey()Ljava/security/KeyPair;

    move-result-object v0

    .line 311
    invoke-static {v0}, Lcom/paic/openapi/demo/util/rsa/RSA;->getRsaSecurityKey(Ljava/security/KeyPair;)Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;

    move-result-object v0

    return-object v0
.end method

.method public static getRsaSecurityKey(Ljava/security/KeyPair;)Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;

    invoke-direct {v0}, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;-><init>()V

    .line 296
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->setBase64PrivateKey(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->setBase64PublicKey(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->setBytePrivateKey([B)V

    .line 299
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->setBytePublicKey([B)V

    .line 300
    return-object v0
.end method

.method public static getSignature([BZ)Ljava/security/Signature;
    .locals 2

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 86
    sget-object v1, Lcom/paic/openapi/demo/util/rsa/RSA;->keyFactory:Ljava/security/KeyFactory;

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 87
    const-string v0, "MD5withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 95
    :goto_0
    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 92
    sget-object v1, Lcom/paic/openapi/demo/util/rsa/RSA;->keyFactory:Ljava/security/KeyFactory;

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 93
    const-string v0, "MD5withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_0
.end method

.method public static initKey()Ljava/security/KeyPair;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/paic/openapi/demo/util/rsa/RSA;->keyPairGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 322
    invoke-static {}, Lcom/paic/openapi/demo/util/rsa/RSA;->getRsaSecurityKey()Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->getBase64PublicKey()Ljava/lang/String;

    move-result-object v1

    .line 324
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u751f\u6210\u7684\u516c\u94a5\u4e32:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0}, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->getBase64PrivateKey()Ljava/lang/String;

    move-result-object v0

    .line 326
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u751f\u6210\u7684\u79c1\u94a5\u4e32:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    const-string v2, "\u6d4b\u8bd5\u4e00\u4e2a\u5f88\u957f\u7684\u62a5\u6587dfasdfdasffffffffffadfasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

    .line 328
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u52a0\u5bc6\u524d\u6570\u636e\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    invoke-static {v2, v1}, Lcom/paic/openapi/demo/util/rsa/RSA;->base64EncryptByPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u516c\u94a5\u52a0\u5bc6\u540e\u7684base64\u6570\u636e\u4e32:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 331
    invoke-static {v1, v0}, Lcom/paic/openapi/demo/util/rsa/RSA;->base64DecryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u89e3\u5bc6\u7ed3\u679c\u4e32\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public static sign([B[B)[B
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/paic/openapi/demo/util/rsa/RSA;->getSignature([BZ)Ljava/security/Signature;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 106
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public static verify([B[B[B)Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/paic/openapi/demo/util/rsa/RSA;->getSignature([BZ)Ljava/security/Signature;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 116
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method

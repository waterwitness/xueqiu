.class public Lorg/apache/commons/codec/digest/Md5Crypt;
.super Ljava/lang/Object;
.source "Md5Crypt.java"


# static fields
.field static final APR1_PREFIX:Ljava/lang/String; = "$apr1$"

.field private static final BLOCKSIZE:I = 0x10

.field static final MD5_PREFIX:Ljava/lang/String; = "$1$"

.field private static final ROUNDS:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apr1Crypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$apr1$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    if-eqz p1, :cond_0

    const-string v0, "$apr1$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$apr1$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    :cond_0
    const-string v0, "$apr1$"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$1$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "$1$"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v2, 0x10

    const/4 v10, 0x4

    const/4 v5, 0x0

    .line 180
    array-length v6, p0

    .line 184
    if-nez p1, :cond_0

    .line 185
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_0
    sget-object v1, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 196
    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v8

    .line 201
    invoke-virtual {v8, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 206
    sget-object v1, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 211
    invoke-virtual {v8, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 216
    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v4

    .line 217
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 218
    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 219
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 220
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    move v3, v6

    .line 222
    :goto_1
    if-lez v3, :cond_4

    .line 223
    if-le v3, v2, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v8, v9, v5, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 224
    add-int/lit8 v3, v3, -0x10

    goto :goto_1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "$"

    const-string v3, "\\$"

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "([\\.\\/a-zA-Z0-9]{1,8}).*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid salt value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_2
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v1, v3

    .line 223
    goto :goto_2

    .line 230
    :cond_4
    invoke-static {v9, v5}, Ljava/util/Arrays;->fill([BB)V

    move v1, v6

    .line 237
    :goto_3
    if-lez v1, :cond_6

    .line 238
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v11, :cond_5

    .line 239
    aget-byte v3, v9, v5

    invoke-virtual {v8, v3}, Ljava/security/MessageDigest;->update(B)V

    .line 243
    :goto_4
    shr-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 241
    :cond_5
    aget-byte v3, p0, v5

    invoke-virtual {v8, v3}, Ljava/security/MessageDigest;->update(B)V

    goto :goto_4

    .line 249
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    move-object v1, v4

    move v3, v5

    .line 256
    :goto_5
    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_b

    .line 257
    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 258
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_9

    .line 259
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 264
    :goto_6
    rem-int/lit8 v4, v3, 0x3

    if-eqz v4, :cond_7

    .line 265
    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 268
    :cond_7
    rem-int/lit8 v4, v3, 0x7

    if-eqz v4, :cond_8

    .line 269
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 272
    :cond_8
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_a

    .line 273
    invoke-virtual {v1, v0, v5, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 277
    :goto_7
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 261
    :cond_9
    invoke-virtual {v1, v0, v5, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_6

    .line 275
    :cond_a
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_7

    .line 283
    :cond_b
    aget-byte v2, v0, v5

    const/4 v3, 0x6

    aget-byte v3, v0, v3

    const/16 v4, 0xc

    aget-byte v4, v0, v4

    invoke-static {v2, v3, v4, v10, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 284
    aget-byte v2, v0, v11

    const/4 v3, 0x7

    aget-byte v3, v0, v3

    const/16 v4, 0xd

    aget-byte v4, v0, v4

    invoke-static {v2, v3, v4, v10, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 285
    aget-byte v2, v0, v12

    const/16 v3, 0x8

    aget-byte v3, v0, v3

    const/16 v4, 0xe

    aget-byte v4, v0, v4

    invoke-static {v2, v3, v4, v10, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 286
    const/4 v2, 0x3

    aget-byte v2, v0, v2

    const/16 v3, 0x9

    aget-byte v3, v0, v3

    const/16 v4, 0xf

    aget-byte v4, v0, v4

    invoke-static {v2, v3, v4, v10, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 287
    aget-byte v2, v0, v10

    const/16 v3, 0xa

    aget-byte v3, v0, v3

    const/4 v4, 0x5

    aget-byte v4, v0, v4

    invoke-static {v2, v3, v4, v10, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 288
    const/16 v2, 0xb

    aget-byte v2, v0, v2

    invoke-static {v5, v5, v2, v12, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 294
    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    .line 295
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 296
    invoke-static {p0, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 297
    invoke-static {v7, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 298
    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 300
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

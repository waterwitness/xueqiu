.class public final Lcom/snowballfinance/message/a/a;
.super Ljava/lang/Object;
.source "RSAEncoder.java"


# direct methods
.method public static a([BLjava/security/Key;I)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 20
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 21
    const/4 v0, 0x1

    invoke-virtual {v5, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 22
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    div-int/lit8 v0, p2, 0x8

    add-int/lit8 v4, v0, -0xb

    move v0, v1

    move v2, v1

    .line 25
    :goto_0
    array-length v3, p0

    sub-int/2addr v3, v2

    if-lez v3, :cond_1

    .line 26
    array-length v3, p0

    sub-int/2addr v3, v2

    .line 27
    if-le v3, v4, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v5, p0, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .line 28
    array-length v3, v2

    invoke-virtual {v6, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 25
    add-int/lit8 v0, v0, 0x1

    mul-int v2, v0, v4

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

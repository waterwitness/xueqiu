.class public Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;
.super Ljava/lang/Object;
.source "RSASecurityKey.java"


# instance fields
.field private base64PrivateKey:Ljava/lang/String;

.field private base64PublicKey:Ljava/lang/String;

.field private bytePrivateKey:[B

.field private bytePublicKey:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase64PrivateKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->base64PrivateKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBase64PublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->base64PublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBytePrivateKey()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->bytePrivateKey:[B

    return-object v0
.end method

.method public getBytePublicKey()[B
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->bytePublicKey:[B

    return-object v0
.end method

.method public setBase64PrivateKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->base64PrivateKey:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setBase64PublicKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->base64PublicKey:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setBytePrivateKey([B)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->bytePrivateKey:[B

    .line 41
    return-void
.end method

.method public setBytePublicKey([B)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/paic/openapi/demo/util/rsa/RSASecurityKey;->bytePublicKey:[B

    .line 33
    return-void
.end method

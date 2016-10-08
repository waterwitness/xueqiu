.class public final Lcom/snowballfinance/message/io/c/c;
.super Lcom/snowballfinance/message/io/a;
.source "ChannelContext.java"


# static fields
.field private static final g:Ljava/security/KeyPair;


# instance fields
.field final b:Lcom/snowballfinance/message/io/c/d;

.field c:Ljava/security/Key;

.field d:Ljava/security/Key;

.field e:I

.field f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/snowballfinance/message/io/c/c;->a()Ljava/security/KeyPair;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/message/io/c/c;->g:Ljava/security/KeyPair;

    return-void
.end method

.method public constructor <init>(Lcom/snowballfinance/message/io/c/d;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/snowballfinance/message/io/c/c;->g:Ljava/security/KeyPair;

    invoke-direct {p0, p1, v0}, Lcom/snowballfinance/message/io/c/c;-><init>(Lcom/snowballfinance/message/io/c/d;Ljava/security/KeyPair;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/snowballfinance/message/io/c/d;Ljava/security/KeyPair;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/snowballfinance/message/io/a;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 36
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/c;->c:Ljava/security/Key;

    .line 37
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/c;->d:Ljava/security/Key;

    .line 38
    const/16 v0, 0x400

    iput v0, p0, Lcom/snowballfinance/message/io/c/c;->e:I

    .line 39
    return-void
.end method

.method private static final a()Ljava/security/KeyPair;
    .locals 2

    .prologue
    .line 1032
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 1033
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 1034
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 31
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    const-string v0, "ChannelContext:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

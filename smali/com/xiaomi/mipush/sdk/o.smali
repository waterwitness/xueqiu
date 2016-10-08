.class public final Lcom/xiaomi/mipush/sdk/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/mipush/sdk/o;->a:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x17t
        0x54t
        0x72t
        0x48t
        0x0t
        0x4t
        0x61t
        0x49t
        0x61t
        0x2t
        0x34t
        0x54t
        0x66t
        0x12t
        0x20t
    .end array-data
.end method

.method protected static a(Landroid/content/Context;Lorg/apache/a/b;Lcom/xiaomi/g/a/a;)Lcom/xiaomi/g/a/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/a/b",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/g/a/a;",
            ")",
            "Lcom/xiaomi/g/a/n;"
        }
    .end annotation

    .prologue
    .line 0
    sget-object v0, Lcom/xiaomi/g/a/a;->a:Lcom/xiaomi/g/a/a;

    invoke-virtual {p2, v0}, Lcom/xiaomi/g/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v5, v0, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 0
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/o;->a(Landroid/content/Context;Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/g/a/n;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/g/a/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/a/b",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/g/a/a;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/g/a/n;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-static {p1}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "invoke convertThriftObjectToBytes method, return null."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/xiaomi/g/a/n;

    invoke-direct {v2}, Lcom/xiaomi/g/a/n;-><init>()V

    if-eqz p3, :cond_2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v3

    .line 2000
    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/k;->d:Ljava/lang/String;

    .line 0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "regSecret is empty, return null"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/xiaomi/a/a/f/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 3000
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v1, v3}, Lcom/xiaomi/mipush/sdk/o;->a([BI)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 0
    :cond_2
    :goto_1
    new-instance v1, Lcom/xiaomi/g/a/f;

    invoke-direct {v1}, Lcom/xiaomi/g/a/f;-><init>()V

    const-wide/16 v4, 0x5

    iput-wide v4, v1, Lcom/xiaomi/g/a/f;->a:J

    const-string v3, "fakeid"

    iput-object v3, v1, Lcom/xiaomi/g/a/f;->b:Ljava/lang/String;

    .line 4000
    iput-object v1, v2, Lcom/xiaomi/g/a/n;->g:Lcom/xiaomi/g/a/f;

    .line 0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5000
    iput-object v0, v2, Lcom/xiaomi/g/a/n;->d:Ljava/nio/ByteBuffer;

    .line 6000
    iput-object p2, v2, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 0
    invoke-virtual {v2}, Lcom/xiaomi/g/a/n;->a()Lcom/xiaomi/g/a/n;

    .line 7000
    iput-object p4, v2, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    .line 0
    invoke-virtual {v2, p3}, Lcom/xiaomi/g/a/n;->a(Z)Lcom/xiaomi/g/a/n;

    .line 8000
    iput-object p5, v2, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    move-object v0, v2

    .line 0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "encryption error. "

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a([BI)Ljavax/crypto/Cipher;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/xiaomi/mipush/sdk/o;->a:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v2
.end method

.method protected static a(Landroid/content/Context;Lcom/xiaomi/g/a/n;)Lorg/apache/a/b;
    .locals 3

    .prologue
    .line 0
    .line 9000
    iget-boolean v0, p1, Lcom/xiaomi/g/a/n;->b:Z

    .line 0
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    .line 10000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/k;->d:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Lcom/xiaomi/a/a/f/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/g/a/n;->b()[B

    move-result-object v1

    .line 11000
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/xiaomi/mipush/sdk/o;->a([BI)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 12000
    :goto_0
    iget-object v1, p1, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 13000
    sget-object v2, Lcom/xiaomi/mipush/sdk/p;->a:[I

    invoke-virtual {v1}, Lcom/xiaomi/g/a/a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    .line 0
    :goto_1
    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;[B)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/a/g;

    const-string v2, "the aes decrypt failed."

    invoke-direct {v1, v2, v0}, Lorg/apache/a/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/g/a/n;->b()[B

    move-result-object v0

    goto :goto_0

    .line 13000
    :pswitch_0
    new-instance v1, Lcom/xiaomi/g/a/t;

    invoke-direct {v1}, Lcom/xiaomi/g/a/t;-><init>()V

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/xiaomi/g/a/ah;

    invoke-direct {v1}, Lcom/xiaomi/g/a/ah;-><init>()V

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/xiaomi/g/a/ad;

    invoke-direct {v1}, Lcom/xiaomi/g/a/ad;-><init>()V

    goto :goto_1

    :pswitch_3
    new-instance v1, Lcom/xiaomi/g/a/al;

    invoke-direct {v1}, Lcom/xiaomi/g/a/al;-><init>()V

    goto :goto_1

    :pswitch_4
    new-instance v1, Lcom/xiaomi/g/a/z;

    invoke-direct {v1}, Lcom/xiaomi/g/a/z;-><init>()V

    goto :goto_1

    :pswitch_5
    new-instance v1, Lcom/xiaomi/g/a/h;

    invoke-direct {v1}, Lcom/xiaomi/g/a/h;-><init>()V

    goto :goto_1

    :pswitch_6
    new-instance v1, Lcom/xiaomi/g/a/l;

    invoke-direct {v1}, Lcom/xiaomi/g/a/l;-><init>()V

    goto :goto_1

    :pswitch_7
    new-instance v1, Lcom/xiaomi/g/a/x;

    invoke-direct {v1}, Lcom/xiaomi/g/a/x;-><init>()V

    goto :goto_1

    :pswitch_8
    new-instance v1, Lcom/xiaomi/g/a/p;

    invoke-direct {v1}, Lcom/xiaomi/g/a/p;-><init>()V

    goto :goto_1

    :pswitch_9
    new-instance v1, Lcom/xiaomi/g/a/l;

    invoke-direct {v1}, Lcom/xiaomi/g/a/l;-><init>()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

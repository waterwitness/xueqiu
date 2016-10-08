.class public final Lcom/pingan/b/c/j;
.super Ljava/lang/Object;
.source "UpToken.java"


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingan/b/c/j;->b:Ljava/lang/String;

    .line 16
    const-string v0, "returnUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/b/c/j;->b:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/pingan/b/c/j;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/pingan/b/c/j;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 23
    :try_start_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 27
    array-length v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 30
    :cond_1
    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 1047
    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 33
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    const-string v1, "scope"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const-string v1, "deadline"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Lcom/pingan/b/c/j;

    invoke-direct {v0, v2, p0}, Lcom/pingan/b/c/j;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    goto :goto_0

    .line 25
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pingan/b/c/j;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pingan/b/c/j;->a:Ljava/lang/String;

    return-object v0
.end method

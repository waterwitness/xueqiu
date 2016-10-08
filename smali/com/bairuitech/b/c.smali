.class public final Lcom/bairuitech/b/c;
.super Ljava/lang/Object;
.source "ConfigService.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/bairuitech/b/b;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v3, Lcom/bairuitech/b/b;

    invoke-direct {v3}, Lcom/bairuitech/b/b;-><init>()V

    .line 12
    const-string v0, "perference"

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 14
    const-string v0, "name"

    const-string v5, ""

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bairuitech/b/b;->b:Ljava/lang/String;

    .line 15
    const-string v0, "password"

    const-string v5, ""

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bairuitech/b/b;->c:Ljava/lang/String;

    .line 16
    const-string v0, "IsSaveNameAndPw"

    const-string v5, ""

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/bairuitech/b/b;->a:Z

    .line 18
    const-string v0, "ip"

    const-string v5, "demo.anychat.cn"

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bairuitech/b/b;->d:Ljava/lang/String;

    .line 19
    const-string v0, "port"

    const/16 v5, 0x22ca

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->e:I

    .line 21
    const-string v0, "configMode"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->f:I

    .line 22
    const-string v0, "resolution_width"

    const/16 v5, 0x140

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->g:I

    .line 23
    const-string v0, "resolution_height"

    const/16 v5, 0xf0

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->h:I

    .line 24
    const-string v0, "videoBitrate"

    const v5, 0x249f0

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->i:I

    .line 25
    const-string v0, "videoFps"

    const/16 v5, 0xa

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->j:I

    .line 26
    const-string v0, "videoQuality"

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->k:I

    .line 27
    const-string v0, "videoPreset"

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->l:I

    .line 28
    const-string v0, "videoOverlay"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->m:I

    .line 29
    const-string v0, "VideoRotateMode"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->n:I

    .line 30
    const-string v0, "FixColorDeviation"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->o:I

    .line 31
    const-string v0, "videoShowGPURender"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->p:I

    .line 32
    const-string v0, "videoAutoRotation"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->q:I

    .line 34
    const-string v0, "enableP2P"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->r:I

    .line 35
    const-string v0, "useARMv6Lib"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->s:I

    .line 36
    const-string v0, "enableAEC"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->t:I

    .line 37
    const-string v0, "useHWCodec"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/bairuitech/b/b;->u:I

    .line 38
    return-object v3

    :cond_0
    move v0, v2

    .line 16
    goto/16 :goto_0
.end method

.class public final Lcom/alipay/sdk/f/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/sdk/f/c;)Lcom/alipay/sdk/f/g;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 0
    iget-object v1, p0, Lcom/alipay/sdk/f/c;->a:Lcom/alipay/sdk/b/e;

    iget-object v2, p0, Lcom/alipay/sdk/f/c;->b:Lcom/alipay/sdk/b/f;

    iget-object v3, p0, Lcom/alipay/sdk/f/c;->c:Lorg/json/JSONObject;

    const-string v0, "form"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/sdk/f/g;

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/f/g;-><init>(Lcom/alipay/sdk/b/e;Lcom/alipay/sdk/b/f;)V

    iget-object v1, p0, Lcom/alipay/sdk/f/c;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/f/g;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "status"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "status"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/f/f;->a(Ljava/lang/String;)Lcom/alipay/sdk/f/f;

    move-result-object v0

    sget-object v4, Lcom/alipay/sdk/f/e;->a:[I

    invoke-virtual {v0}, Lcom/alipay/sdk/f/f;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move-object v0, v6

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/alipay/sdk/f/g;

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/f/g;-><init>(Lcom/alipay/sdk/b/e;Lcom/alipay/sdk/b/f;)V

    invoke-virtual {v0, v3}, Lcom/alipay/sdk/f/g;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/alipay/sdk/g/a;->a()Lcom/alipay/sdk/g/a;

    move-result-object v0

    iget-object v1, v0, Lcom/alipay/sdk/g/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/sdk/i/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/i/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/sdk/i/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/i/b;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/alipay/sdk/h/a;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/h/a;-><init>(Landroid/content/Context;)V

    .line 1000
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/sdk/h/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/sdk/h/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/alipay/sdk/h/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/sdk/h/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 0
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/alipay/sdk/h/a;->close()V

    goto :goto_1

    .line 1000
    :catch_0
    move-exception v1

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_3

    .line 0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

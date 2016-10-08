.class public final Lcom/xiaomi/mipush/sdk/q;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/mipush/sdk/q;

.field private static c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mipush/sdk/q;->a:Lcom/xiaomi/mipush/sdk/q;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/q;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v0, "notify_effect"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v0, "notify_effect"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/push/service/bh;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cause: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/xiaomi/push/service/bh;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "intent_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "intent_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    :try_start_2
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :try_start_3
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cause: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "class_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "class_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_4
    const-string v0, "intent_flag"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "intent_flag"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    move-object v0, v2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cause by intent_flag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_5
    sget-object v2, Lcom/xiaomi/push/service/bh;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "web_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_3
    :try_start_5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "https"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cause: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cause: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto/16 :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    move-object v2, v0

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private a(Lcom/xiaomi/g/a/n;)Lcom/xiaomi/mipush/sdk/f;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/o;->a(Landroid/content/Context;Lcom/xiaomi/g/a/n;)Lorg/apache/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "message arrived: receiving an un-recognized message. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message arrived: receive a message."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/a/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 33000
    iget-object v2, p1, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "message arrived: processing an arrived message, action="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/mipush/sdk/r;->a:[I

    invoke-virtual {v2}, Lcom/xiaomi/g/a/a;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Lcom/xiaomi/g/a/z;

    .line 34000
    iget-object v2, v0, Lcom/xiaomi/g/a/z;->h:Lcom/xiaomi/g/a/b;

    .line 0
    if-nez v2, :cond_1

    const-string v0, "message arrived: receive an empty message without push content, drop it"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    const-string v0, "message arrived: receive a message which action string is not valid. is the reg expired?"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 35000
    iget-object v3, v3, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    .line 0
    if-eqz v3, :cond_2

    iget-object v1, p1, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    iget-object v1, v1, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    const-string v3, "jobkey"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36000
    :cond_2
    iget-object v3, p1, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 0
    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/xiaomi/mipush/sdk/g;->a(Lcom/xiaomi/g/a/z;Lcom/xiaomi/g/a/d;Z)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    .line 37000
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/xiaomi/mipush/sdk/e;->n:Z

    .line 0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "message arrived: receive a message, msgid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38000
    iget-object v2, v2, Lcom/xiaomi/g/a/b;->b:Ljava/lang/String;

    .line 0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", jobkey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/xiaomi/g/a/n;Z[B)Lcom/xiaomi/mipush/sdk/f;
    .locals 18

    .prologue
    .line 0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/xiaomi/mipush/sdk/o;->a(Landroid/content/Context;Lcom/xiaomi/g/a/n;)Lorg/apache/a/b;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receiving an un-recognized message. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "receive a message."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/a/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 39000
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "processing a message, action="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    sget-object v4, Lcom/xiaomi/mipush/sdk/r;->a:[I

    invoke-virtual {v3}, Lcom/xiaomi/g/a/a;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    const-string v2, "receive a message which action string is not valid. is the reg expired?"

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :pswitch_0
    move-object v6, v2

    check-cast v6, Lcom/xiaomi/g/a/t;

    iget-wide v2, v6, Lcom/xiaomi/g/a/t;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v2

    iget-object v3, v6, Lcom/xiaomi/g/a/t;->h:Ljava/lang/String;

    iget-object v4, v6, Lcom/xiaomi/g/a/t;->i:Ljava/lang/String;

    .line 40000
    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    .line 41000
    iput-object v3, v2, Lcom/xiaomi/mipush/sdk/k;->c:Ljava/lang/String;

    iput-object v4, v2, Lcom/xiaomi/mipush/sdk/k;->d:Ljava/lang/String;

    iget-object v5, v2, Lcom/xiaomi/mipush/sdk/k;->k:Lcom/xiaomi/mipush/sdk/j;

    .line 42000
    iget-object v5, v5, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    .line 41000
    invoke-static {v5}, Lcom/xiaomi/push/service/ak;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/xiaomi/mipush/sdk/k;->f:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/k;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/xiaomi/mipush/sdk/k;->e:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/xiaomi/mipush/sdk/k;->h:Z

    iget-object v5, v2, Lcom/xiaomi/mipush/sdk/k;->k:Lcom/xiaomi/mipush/sdk/j;

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/j;->c()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "regId"

    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "regSec"

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "devId"

    iget-object v4, v2, Lcom/xiaomi/mipush/sdk/k;->f:Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "vName"

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "valid"

    const/4 v3, 0x1

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    :cond_3
    const/4 v3, 0x0

    iget-object v2, v6, Lcom/xiaomi/g/a/t;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v6, Lcom/xiaomi/g/a/t;->h:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, "register"

    iget-wide v4, v6, Lcom/xiaomi/g/a/t;->f:J

    iget-object v6, v6, Lcom/xiaomi/g/a/t;->g:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mipush/sdk/g;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/d;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/s;->e()V

    goto/16 :goto_0

    :pswitch_1
    check-cast v2, Lcom/xiaomi/g/a/ah;

    iget-wide v2, v2, Lcom/xiaomi/g/a/ah;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/j;->b()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->b(Landroid/content/Context;)V

    :cond_5
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v3

    .line 43000
    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-boolean v3, v3, Lcom/xiaomi/mipush/sdk/k;->i:Z

    .line 0
    if-eqz v3, :cond_6

    if-nez p2, :cond_6

    const-string v2, "receive a message in pause state. drop it"

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    check-cast v2, Lcom/xiaomi/g/a/z;

    .line 44000
    iget-object v6, v2, Lcom/xiaomi/g/a/z;->h:Lcom/xiaomi/g/a/b;

    .line 0
    if-nez v6, :cond_7

    const-string v2, "receive an empty message without push content, drop it"

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/ax;->b(Lcom/xiaomi/g/a/n;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    .line 45000
    iget-object v4, v6, Lcom/xiaomi/g/a/b;->b:Ljava/lang/String;

    .line 46000
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 0
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    .line 47000
    iget-object v8, v6, Lcom/xiaomi/g/a/b;->c:Ljava/lang/String;

    .line 0
    invoke-static {v3, v4, v5, v7, v8}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/g/a/d;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    if-nez p2, :cond_9

    .line 51000
    iget-object v3, v2, Lcom/xiaomi/g/a/z;->g:Ljava/lang/String;

    .line 0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    .line 51001
    iget-object v4, v2, Lcom/xiaomi/g/a/z;->g:Ljava/lang/String;

    .line 0
    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/b;->h(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-gez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    .line 51002
    iget-object v4, v2, Lcom/xiaomi/g/a/z;->g:Ljava/lang/String;

    .line 0
    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    :goto_3
    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    if-eqz v5, :cond_a

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 51006
    iget-object v5, v5, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    .line 0
    if-eqz v5, :cond_a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    iget-object v3, v3, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    const-string v5, "jobkey"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 51007
    iget-object v3, v6, Lcom/xiaomi/g/a/b;->b:Ljava/lang/String;

    move-object v5, v3

    .line 0
    :goto_4
    if-nez p2, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/xiaomi/mipush/sdk/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "drop a duplicate message, key="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    move-object v3, v4

    .line 51016
    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 0
    if-nez v4, :cond_0

    if-nez p2, :cond_0

    .line 51017
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 51018
    new-instance v5, Lcom/xiaomi/g/a/h;

    invoke-direct {v5}, Lcom/xiaomi/g/a/h;-><init>()V

    .line 51019
    iget-object v6, v2, Lcom/xiaomi/g/a/z;->d:Ljava/lang/String;

    .line 51020
    iput-object v6, v5, Lcom/xiaomi/g/a/h;->d:Ljava/lang/String;

    .line 51021
    iget-object v6, v2, Lcom/xiaomi/g/a/z;->c:Ljava/lang/String;

    .line 51022
    iput-object v6, v5, Lcom/xiaomi/g/a/h;->c:Ljava/lang/String;

    .line 51023
    iget-object v6, v2, Lcom/xiaomi/g/a/z;->h:Lcom/xiaomi/g/a/b;

    .line 51024
    iget-wide v6, v6, Lcom/xiaomi/g/a/b;->e:J

    .line 51018
    invoke-virtual {v5, v6, v7}, Lcom/xiaomi/g/a/h;->a(J)Lcom/xiaomi/g/a/h;

    .line 51025
    iget-object v6, v2, Lcom/xiaomi/g/a/z;->f:Ljava/lang/String;

    .line 51018
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 51026
    iget-object v6, v2, Lcom/xiaomi/g/a/z;->f:Ljava/lang/String;

    .line 51027
    iput-object v6, v5, Lcom/xiaomi/g/a/h;->f:Ljava/lang/String;

    .line 51028
    :cond_c
    iget-object v6, v2, Lcom/xiaomi/g/a/z;->g:Ljava/lang/String;

    .line 51018
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 51029
    iget-object v2, v2, Lcom/xiaomi/g/a/z;->g:Ljava/lang/String;

    .line 51030
    iput-object v2, v5, Lcom/xiaomi/g/a/h;->g:Ljava/lang/String;

    .line 51018
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v2

    sget-object v6, Lcom/xiaomi/g/a/a;->f:Lcom/xiaomi/g/a/a;

    invoke-virtual {v2, v5, v6, v4}, Lcom/xiaomi/mipush/sdk/s;->a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;Lcom/xiaomi/g/a/d;)V

    goto/16 :goto_0

    .line 0
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    .line 48000
    iget-object v4, v6, Lcom/xiaomi/g/a/b;->b:Ljava/lang/String;

    .line 49000
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 50000
    iget-object v7, v6, Lcom/xiaomi/g/a/b;->c:Ljava/lang/String;

    .line 0
    invoke-static {v3, v4, v5, v7}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/g/a/d;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 51003
    :cond_f
    iget-object v3, v2, Lcom/xiaomi/g/a/z;->f:Ljava/lang/String;

    .line 0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    .line 51004
    iget-object v4, v2, Lcom/xiaomi/g/a/z;->f:Ljava/lang/String;

    .line 0
    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/b;->g(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-gez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    .line 51005
    iget-object v4, v2, Lcom/xiaomi/g/a/z;->f:Ljava/lang/String;

    .line 0
    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 51008
    :cond_10
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 0
    move/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mipush/sdk/g;->a(Lcom/xiaomi/g/a/z;Lcom/xiaomi/g/a/d;Z)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v3

    .line 51009
    iget v4, v3, Lcom/xiaomi/mipush/sdk/e;->g:I

    .line 0
    if-nez v4, :cond_11

    if-nez p2, :cond_11

    .line 51010
    iget-object v4, v3, Lcom/xiaomi/mipush/sdk/e;->o:Ljava/util/HashMap;

    .line 0
    invoke-static {v4}, Lcom/xiaomi/push/service/ax;->a(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;Lcom/xiaomi/g/a/n;[B)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "receive a message, msgid="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51011
    iget-object v7, v6, Lcom/xiaomi/g/a/b;->b:Ljava/lang/String;

    .line 0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", jobkey="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_b

    .line 51012
    iget-object v4, v3, Lcom/xiaomi/mipush/sdk/e;->o:Ljava/util/HashMap;

    .line 0
    if-eqz v4, :cond_b

    .line 51013
    iget-object v4, v3, Lcom/xiaomi/mipush/sdk/e;->o:Ljava/util/HashMap;

    .line 0
    const-string v5, "notify_effect"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 51014
    iget-object v4, v3, Lcom/xiaomi/mipush/sdk/e;->o:Ljava/util/HashMap;

    .line 0
    const-string v2, "notify_effect"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/ax;->b(Lcom/xiaomi/g/a/n;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/xiaomi/mipush/sdk/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_12

    const-string v2, "Getting Intent fail from ignore reg message. "

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 51015
    :cond_12
    iget-object v3, v6, Lcom/xiaomi/g/a/b;->d:Ljava/lang/String;

    .line 0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "payload"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_14
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/xiaomi/mipush/sdk/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_14

    sget-object v5, Lcom/xiaomi/push/service/bh;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "key_message"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :pswitch_3
    move-object v7, v2

    check-cast v7, Lcom/xiaomi/g/a/ad;

    iget-wide v2, v7, Lcom/xiaomi/g/a/ad;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    .line 51031
    iget-object v3, v7, Lcom/xiaomi/g/a/ad;->h:Ljava/lang/String;

    .line 0
    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_17
    const/4 v3, 0x0

    .line 51032
    iget-object v2, v7, Lcom/xiaomi/g/a/ad;->h:Ljava/lang/String;

    .line 0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51033
    iget-object v2, v7, Lcom/xiaomi/g/a/ad;->h:Ljava/lang/String;

    .line 0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    const-string v2, "subscribe-topic"

    iget-wide v4, v7, Lcom/xiaomi/g/a/ad;->f:J

    iget-object v6, v7, Lcom/xiaomi/g/a/ad;->g:Ljava/lang/String;

    .line 51034
    iget-object v7, v7, Lcom/xiaomi/g/a/ad;->j:Ljava/lang/String;

    .line 0
    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mipush/sdk/g;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/d;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_4
    move-object v7, v2

    check-cast v7, Lcom/xiaomi/g/a/al;

    iget-wide v2, v7, Lcom/xiaomi/g/a/al;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    .line 51035
    iget-object v3, v7, Lcom/xiaomi/g/a/al;->h:Ljava/lang/String;

    .line 0
    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/b;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_19
    const/4 v3, 0x0

    .line 51036
    iget-object v2, v7, Lcom/xiaomi/g/a/al;->h:Ljava/lang/String;

    .line 0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51037
    iget-object v2, v7, Lcom/xiaomi/g/a/al;->h:Ljava/lang/String;

    .line 0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    const-string v2, "unsubscibe-topic"

    iget-wide v4, v7, Lcom/xiaomi/g/a/al;->f:J

    iget-object v6, v7, Lcom/xiaomi/g/a/al;->g:Ljava/lang/String;

    .line 51038
    iget-object v7, v7, Lcom/xiaomi/g/a/al;->j:Ljava/lang/String;

    .line 0
    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mipush/sdk/g;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/d;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_5
    move-object v7, v2

    check-cast v7, Lcom/xiaomi/g/a/l;

    .line 51039
    iget-object v2, v7, Lcom/xiaomi/g/a/l;->e:Ljava/lang/String;

    .line 51040
    iget-object v5, v7, Lcom/xiaomi/g/a/l;->j:Ljava/util/List;

    .line 0
    iget-wide v8, v7, Lcom/xiaomi/g/a/l;->g:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_21

    const-string v3, "accept-time"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz v5, :cond_1d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lcom/xiaomi/mipush/sdk/b;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "00:00"

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "00:00"

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/xiaomi/mipush/sdk/j;->a(Z)V

    :goto_6
    const-string v3, "GMT+08"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 51041
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move-object v3, v5

    .line 0
    :goto_7
    iget-wide v4, v7, Lcom/xiaomi/g/a/l;->g:J

    iget-object v6, v7, Lcom/xiaomi/g/a/l;->h:Ljava/lang/String;

    .line 51042
    iget-object v7, v7, Lcom/xiaomi/g/a/l;->k:Ljava/lang/String;

    .line 0
    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mipush/sdk/g;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/d;

    move-result-object v3

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/xiaomi/mipush/sdk/j;->a(Z)V

    goto :goto_6

    .line 51041
    :cond_1c
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x3c

    int-to-long v8, v3

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v3, 0x1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/4 v3, 0x1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v16, 0x3c

    mul-long v10, v10, v16

    add-long/2addr v10, v12

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x5a0

    add-long/2addr v10, v12

    const-wide/16 v12, 0x5a0

    rem-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v14

    add-long/2addr v4, v12

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x5a0

    add-long/2addr v4, v8

    const-wide/16 v8, 0x5a0

    rem-long/2addr v4, v8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "%1$02d:%2$02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v12, 0x3c

    div-long v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x1

    const-wide/16 v12, 0x3c

    rem-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "%1$02d:%2$02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v10, 0x3c

    div-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-wide/16 v10, 0x3c

    rem-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 0
    :cond_1d
    const-string v3, "set-alias"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    if-eqz v5, :cond_1e

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v5

    goto/16 :goto_7

    :cond_1e
    const-string v3, "unset-alias"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    if-eqz v5, :cond_1f

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/xiaomi/mipush/sdk/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v5

    goto/16 :goto_7

    :cond_1f
    const-string v3, "set-account"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    if-eqz v5, :cond_20

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/xiaomi/mipush/sdk/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v5

    goto/16 :goto_7

    :cond_20
    const-string v3, "unset-account"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    if-eqz v5, :cond_21

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/xiaomi/mipush/sdk/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_21
    move-object v3, v5

    goto/16 :goto_7

    :pswitch_6
    check-cast v2, Lcom/xiaomi/g/a/p;

    const-string v3, "registration id expired"

    iget-object v4, v2, Lcom/xiaomi/g/a/p;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->c(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_22
    const-string v3, "client_info_update_ok"

    iget-object v4, v2, Lcom/xiaomi/g/a/p;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51043
    iget-object v3, v2, Lcom/xiaomi/g/a/p;->h:Ljava/util/Map;

    .line 0
    if-eqz v3, :cond_2

    .line 51044
    iget-object v3, v2, Lcom/xiaomi/g/a/p;->h:Ljava/util/Map;

    .line 0
    const-string v4, "app_version"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51045
    iget-object v2, v2, Lcom/xiaomi/g/a/p;->h:Ljava/util/Map;

    .line 0
    const-string v3, "app_version"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v3

    .line 51046
    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/j;->c()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "vName"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iput-object v2, v3, Lcom/xiaomi/mipush/sdk/k;->e:Ljava/lang/String;

    goto/16 :goto_1

    :cond_23
    move-object v5, v3

    goto/16 :goto_4

    .line 0
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/q;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/q;->a:Lcom/xiaomi/mipush/sdk/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/q;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/q;->a:Lcom/xiaomi/mipush/sdk/q;

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/q;->a:Lcom/xiaomi/mipush/sdk/q;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    sget-object v2, Lcom/xiaomi/mipush/sdk/q;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/j;->c()Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v1, Lcom/xiaomi/mipush/sdk/q;->c:Ljava/util/Queue;

    if-nez v1, :cond_0

    const-string v1, "pref_msg_ids"

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/xiaomi/mipush/sdk/q;->c:Ljava/util/Queue;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    sget-object v7, Lcom/xiaomi/mipush/sdk/q;->c:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/q;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    monitor-exit v2

    :goto_1
    return v0

    :cond_1
    sget-object v1, Lcom/xiaomi/mipush/sdk/q;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/xiaomi/mipush/sdk/q;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v4, 0xa

    if-le v1, v4, :cond_2

    sget-object v1, Lcom/xiaomi/mipush/sdk/q;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_2
    sget-object v1, Lcom/xiaomi/mipush/sdk/q;->c:Ljava/util/Queue;

    const-string v4, ","

    invoke-static {v1, v4}, Lcom/xiaomi/a/a/f/d;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_msg_ids"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/f;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "receive an intent from server, action="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    const-string v0, "mrt"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v3, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v2, "mipush_payload"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "mipush_notified"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v2, :cond_1

    const-string v0, "receiving an empty message, drop"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Lcom/xiaomi/g/a/n;

    invoke-direct {v4}, Lcom/xiaomi/g/a/n;-><init>()V

    :try_start_0
    invoke-static {v4, v2}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;[B)V

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v5

    .line 1000
    iget-object v6, v4, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 2000
    iget-object v7, v4, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 0
    sget-object v8, Lcom/xiaomi/g/a/a;->e:Lcom/xiaomi/g/a/a;

    if-ne v7, v8, :cond_4

    if-eqz v6, :cond_4

    .line 3000
    iget-object v7, v5, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-boolean v7, v7, Lcom/xiaomi/mipush/sdk/k;->i:Z

    .line 0
    if-nez v7, :cond_4

    if-nez v3, :cond_4

    if-eqz v6, :cond_2

    .line 4000
    iget-object v7, v4, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 0
    const-string v8, "mrt"

    invoke-virtual {v7, v8, v0}, Lcom/xiaomi/g/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5000
    iget-object v0, v4, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 0
    const-string v7, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/xiaomi/g/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7000
    :cond_2
    iget-object v0, v4, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 6000
    new-instance v7, Lcom/xiaomi/g/a/h;

    invoke-direct {v7}, Lcom/xiaomi/g/a/h;-><init>()V

    .line 8000
    iget-object v8, v4, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    .line 9000
    iput-object v8, v7, Lcom/xiaomi/g/a/h;->d:Ljava/lang/String;

    .line 10000
    iget-object v8, v0, Lcom/xiaomi/g/a/d;->a:Ljava/lang/String;

    .line 11000
    iput-object v8, v7, Lcom/xiaomi/g/a/h;->c:Ljava/lang/String;

    .line 12000
    iget-wide v8, v0, Lcom/xiaomi/g/a/d;->b:J

    .line 6000
    invoke-virtual {v7, v8, v9}, Lcom/xiaomi/g/a/h;->a(J)Lcom/xiaomi/g/a/h;

    .line 13000
    iget-object v8, v0, Lcom/xiaomi/g/a/d;->c:Ljava/lang/String;

    .line 6000
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 14000
    iget-object v0, v0, Lcom/xiaomi/g/a/d;->c:Ljava/lang/String;

    .line 15000
    iput-object v0, v7, Lcom/xiaomi/g/a/h;->f:Ljava/lang/String;

    .line 6000
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v0

    sget-object v8, Lcom/xiaomi/g/a/a;->f:Lcom/xiaomi/g/a/a;

    const/4 v9, 0x0

    .line 16000
    iget-object v10, v4, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 6000
    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/xiaomi/mipush/sdk/s;->a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZLcom/xiaomi/g/a/d;)V

    .line 17000
    :cond_4
    iget-object v0, v4, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 0
    sget-object v7, Lcom/xiaomi/g/a/a;->e:Lcom/xiaomi/g/a/a;

    if-ne v0, v7, :cond_8

    .line 18000
    iget-boolean v0, v4, Lcom/xiaomi/g/a/n;->b:Z

    .line 0
    if-nez v0, :cond_8

    invoke-static {v4}, Lcom/xiaomi/push/service/ax;->b(Lcom/xiaomi/g/a/n;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v2, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 19000
    iget-object v4, v4, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    .line 0
    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-eqz v6, :cond_5

    .line 20000
    iget-object v0, v6, Lcom/xiaomi/g/a/d;->a:Ljava/lang/String;

    .line 0
    :goto_1
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    const-string v0, ""

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    .line 21000
    iget-object v0, v6, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    .line 0
    if-eqz v0, :cond_7

    .line 22000
    iget-object v0, v6, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    .line 0
    const-string v7, "notify_effect"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 23000
    iget-object v4, v4, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    .line 0
    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 24000
    iget-object v4, v6, Lcom/xiaomi/g/a/d;->a:Ljava/lang/String;

    .line 0
    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 25000
    :cond_8
    iget-object v0, v5, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/k;->a()Z

    move-result v0

    .line 0
    if-nez v0, :cond_b

    iget-object v0, v4, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    sget-object v6, Lcom/xiaomi/g/a/a;->a:Lcom/xiaomi/g/a/a;

    if-eq v0, v6, :cond_b

    invoke-static {v4}, Lcom/xiaomi/push/service/ax;->b(Lcom/xiaomi/g/a/n;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v4, v3, v2}, Lcom/xiaomi/mipush/sdk/q;->a(Lcom/xiaomi/g/a/n;Z[B)Lcom/xiaomi/mipush/sdk/f;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v0, "receive message without registration. need unregister or re-register!"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    :cond_a
    :goto_2
    move-object v0, v1

    goto/16 :goto_0

    .line 26000
    :cond_b
    iget-object v0, v5, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/k;->a()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_d

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/j;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v4, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    sget-object v2, Lcom/xiaomi/g/a/a;->b:Lcom/xiaomi/g/a/a;

    if-ne v0, v2, :cond_c

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/j;->b()V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V
    :try_end_0
    .catch Lorg/apache/a/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_c
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/b;->d(Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/apache/a/g; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_d
    :try_start_2
    invoke-direct {p0, v4, v3, v2}, Lcom/xiaomi/mipush/sdk/q;->a(Lcom/xiaomi/g/a/n;Z[B)Lcom/xiaomi/mipush/sdk/f;
    :try_end_2
    .catch Lorg/apache/a/g; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v0, "com.xiaomi.mipush.ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/xiaomi/mipush/sdk/d;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/d;-><init>()V

    new-instance v1, Lcom/xiaomi/g/a/n;

    invoke-direct {v1}, Lcom/xiaomi/g/a/n;-><init>()V

    :try_start_3
    const-string v2, "mipush_payload"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-static {v1, v2}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;[B)V
    :try_end_3
    .catch Lorg/apache/a/g; {:try_start_3 .. :try_end_3} :catch_4

    .line 27000
    :cond_f
    :goto_3
    iget-object v1, v1, Lcom/xiaomi/g/a/n;->a:Lcom/xiaomi/g/a/a;

    .line 0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 28000
    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/d;->a:Ljava/lang/String;

    .line 0
    const-string v1, "mipush_error_code"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    .line 29000
    iput-wide v2, v0, Lcom/xiaomi/mipush/sdk/d;->b:J

    .line 0
    const-string v1, "mipush_error_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30000
    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/d;->c:Ljava/lang/String;

    .line 0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receive a error message. code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "mipush_error_code"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mipush_error_msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, "message arrived: receiving an empty message, drop"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_11
    new-instance v2, Lcom/xiaomi/g/a/n;

    invoke-direct {v2}, Lcom/xiaomi/g/a/n;-><init>()V

    :try_start_4
    invoke-static {v2, v0}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;[B)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v0

    invoke-static {v2}, Lcom/xiaomi/push/service/ax;->b(Lcom/xiaomi/g/a/n;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v0, "message arrived: receive ignore reg message, ignore!"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/a/g; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 31000
    :cond_12
    :try_start_5
    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/k;->a()Z

    move-result v3

    .line 0
    if-nez v3, :cond_13

    const-string v0, "message arrived: receive message without registration. need unregister or re-register!"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/apache/a/g; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 32000
    :cond_13
    :try_start_6
    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/k;->a()Z

    move-result v3

    .line 0
    if-eqz v3, :cond_14

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/j;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "message arrived: app info is invalidated"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    invoke-direct {p0, v2}, Lcom/xiaomi/mipush/sdk/q;->a(Lcom/xiaomi/g/a/n;)Lcom/xiaomi/mipush/sdk/f;
    :try_end_6
    .catch Lorg/apache/a/g; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto/16 :goto_3
.end method

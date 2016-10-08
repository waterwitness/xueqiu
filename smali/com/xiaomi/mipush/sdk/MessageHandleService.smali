.class public Lcom/xiaomi/mipush/sdk/MessageHandleService;
.super Landroid/app/IntentService;


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/mipush/sdk/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "MessageHandleThread"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/mipush/sdk/a;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 0
    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1000
    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/a;->a:Lcom/xiaomi/mipush/sdk/h;

    .line 2000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/a;->b:Landroid/content/Intent;

    .line 0
    const-string v2, "message_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/q;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/q;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/q;->a(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/xiaomi/mipush/sdk/e;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/xiaomi/mipush/sdk/e;

    .line 4000
    iget-boolean v2, v0, Lcom/xiaomi/mipush/sdk/e;->n:Z

    .line 0
    if-nez v2, :cond_2

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/h;->onReceiveMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)V

    .line 5000
    :cond_2
    iget v2, v0, Lcom/xiaomi/mipush/sdk/e;->g:I

    .line 0
    if-ne v2, v4, :cond_3

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/h;->onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_3
    :try_start_1
    const-string v2, "key_command"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/h;->onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/d;)V

    .line 3000
    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/d;->a:Ljava/lang/String;

    .line 0
    const-string v3, "register"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/h;->onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/d;)V

    goto :goto_0

    .line 6000
    :cond_3
    iget-boolean v2, v0, Lcom/xiaomi/mipush/sdk/e;->j:Z

    .line 0
    if-eqz v2, :cond_4

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/h;->onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/h;->onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)V

    goto :goto_0

    :cond_5
    instance-of v2, v0, Lcom/xiaomi/mipush/sdk/d;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/h;->onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/d;)V

    .line 7000
    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/d;->a:Ljava/lang/String;

    .line 0
    const-string v3, "register"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/h;->onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/d;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

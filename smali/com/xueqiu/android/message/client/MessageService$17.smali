.class final Lcom/xueqiu/android/message/client/MessageService$17;
.super Lcom/xueqiu/android/base/b/p;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/MessageService;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/message/client/MessageService;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$17;->b:Lcom/xueqiu/android/message/client/MessageService;

    iput-object p2, p0, Lcom/xueqiu/android/message/client/MessageService$17;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 5

    .prologue
    .line 509
    const-string v0, "MessageService"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    const-string v0, "MessageService"

    const-string v1, "updateMobileClientSettings failed. retry in 15 seconds."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$17;->b:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->f(Lcom/xueqiu/android/message/client/MessageService;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$17$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$17$1;-><init>(Lcom/xueqiu/android/message/client/MessageService$17;)V

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 517
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 506
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1521
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    const-string v0, "user_mobile_setting"

    iget-object v1, p0, Lcom/xueqiu/android/message/client/MessageService$17;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/message/client/MessageService$17;->b:Lcom/xueqiu/android/message/client/MessageService;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/client/MessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1523
    const-string v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateMobileClientSetting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/message/client/MessageService$17;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$17;->b:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->f(Lcom/xueqiu/android/message/client/MessageService;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$17$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$17$2;-><init>(Lcom/xueqiu/android/message/client/MessageService$17;)V

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    goto :goto_0
.end method

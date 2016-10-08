.class public Lcom/xueqiu/android/base/MiBroadcastReceiver;
.super Lcom/xiaomi/mipush/sdk/h;
.source "MiBroadcastReceiver.java"


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mCommand:Ljava/lang/String;

.field private mEndTime:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private mRegId:Ljava/lang/String;

.field private mResultCode:J

.field private mStartTime:Ljava/lang/String;

.field private mTopic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/h;-><init>()V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xueqiu/android/base/MiBroadcastReceiver;->mResultCode:J

    .line 38
    return-void
.end method


# virtual methods
.method public onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/d;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 89
    .line 2000
    iget-object v1, p2, Lcom/xiaomi/mipush/sdk/d;->a:Ljava/lang/String;

    .line 3000
    iget-object v0, p2, Lcom/xiaomi/mipush/sdk/d;->d:Ljava/util/List;

    .line 91
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    :goto_0
    const-string v2, "register"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4000
    iget-wide v2, p2, Lcom/xiaomi/mipush/sdk/d;->b:J

    .line 93
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 94
    iput-object v0, p0, Lcom/xueqiu/android/base/MiBroadcastReceiver;->mRegId:Ljava/lang/String;

    .line 95
    const-string v0, "MiBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5000
    iget-object v2, p2, Lcom/xiaomi/mipush/sdk/d;->a:Ljava/lang/String;

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/base/MiBroadcastReceiver;->mRegId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 96
    invoke-static {p1}, Lcom/xueqiu/android/base/t;->a(Landroid/content/Context;)V

    .line 104
    :cond_0
    :goto_1
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_2
    const-string v2, "set-account"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6000
    iget-wide v2, p2, Lcom/xiaomi/mipush/sdk/d;->b:J

    .line 99
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 100
    iput-object v0, p0, Lcom/xueqiu/android/base/MiBroadcastReceiver;->mAccount:Ljava/lang/String;

    .line 101
    const-string v0, "MiBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7000
    iget-object v2, p2, Lcom/xiaomi/mipush/sdk/d;->a:Ljava/lang/String;

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/base/MiBroadcastReceiver;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)V
    .locals 4

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 1000
    iget-object v2, p2, Lcom/xiaomi/mipush/sdk/e;->c:Ljava/lang/String;

    .line 49
    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 52
    const-string v2, "plain"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    const-string v2, "plain"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 55
    const-string v2, "url"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0, p1}, Lcom/xueqiu/android/common/q;->c(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    :goto_0
    if-nez v0, :cond_0

    .line 71
    :goto_1
    return-void

    .line 66
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    const-string v2, "extra_notification"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 70
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public onReceiveMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/d;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

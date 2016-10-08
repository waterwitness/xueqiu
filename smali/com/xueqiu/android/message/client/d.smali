.class public final Lcom/xueqiu/android/message/client/d;
.super Ljava/lang/Object;
.source "PNMessageHandler.java"


# instance fields
.field a:Landroid/content/Context;

.field private b:Lcom/xueqiu/android/base/SnowBallApplication;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xueqiu/android/base/SnowBallApplication;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/xueqiu/android/message/client/d;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/xueqiu/android/message/client/d;->b:Lcom/xueqiu/android/base/SnowBallApplication;

    .line 60
    return-void
.end method


# virtual methods
.method final a([Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/message/client/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-static {v0, p3, p1, v1}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 175
    iget-object v0, p0, Lcom/xueqiu/android/message/client/d;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;IZZ)V

    .line 176
    return-void
.end method

.method public final a(Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 4

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/message/client/d;->a:Landroid/content/Context;

    const-class v2, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    const-string v1, "extra_notification"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/message/client/d;->a:Landroid/content/Context;

    const-class v3, Lcom/xueqiu/android/message/RecentTalkActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    return-object v2
.end method

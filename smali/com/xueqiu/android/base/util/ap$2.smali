.class final Lcom/xueqiu/android/base/util/ap$2;
.super Ljava/lang/Object;
.source "StatusUtil.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;I)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/base/b/ai;

.field final synthetic d:J

.field final synthetic e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xueqiu/android/base/b/ai;JI)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ap$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/base/util/ap$2;->c:Lcom/xueqiu/android/base/b/ai;

    iput-wide p4, p0, Lcom/xueqiu/android/base/util/ap$2;->d:J

    iput p6, p0, Lcom/xueqiu/android/base/util/ap$2;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 321
    check-cast p1, Lrx/i;

    .line 1324
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$2;->a:Landroid/content/Context;

    const v1, 0x7f070294

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xueqiu/android/base/util/ap$2;->a:Landroid/content/Context;

    const v4, 0x7f070124

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1325
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$2;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;)Landroid/support/v4/a/av;

    move-result-object v1

    .line 1326
    invoke-virtual {v1, v0}, Landroid/support/v4/a/av;->b(Ljava/lang/CharSequence;)Landroid/support/v4/a/av;

    move-result-object v1

    .line 1327
    invoke-virtual {v1, v0}, Landroid/support/v4/a/av;->c(Ljava/lang/CharSequence;)Landroid/support/v4/a/av;

    move-result-object v0

    new-instance v1, Landroid/support/v4/a/au;

    invoke-direct {v1}, Landroid/support/v4/a/au;-><init>()V

    iget-object v2, p0, Lcom/xueqiu/android/base/util/ap$2;->b:Ljava/lang/String;

    .line 1328
    invoke-virtual {v1, v2}, Landroid/support/v4/a/au;->a(Ljava/lang/CharSequence;)Landroid/support/v4/a/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/av;->a(Landroid/support/v4/a/bh;)Landroid/support/v4/a/av;

    move-result-object v0

    .line 1329
    invoke-virtual {v0, v5}, Landroid/support/v4/a/av;->a(Z)Landroid/support/v4/a/av;

    move-result-object v0

    .line 1330
    invoke-virtual {v0}, Landroid/support/v4/a/av;->a()Landroid/support/v4/a/av;

    move-result-object v1

    .line 1331
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$2;->a:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x270d

    invoke-virtual {v1}, Landroid/support/v4/a/av;->b()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1333
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$2;->c:Lcom/xueqiu/android/base/b/ai;

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/ap$2;->d:J

    iget-object v4, p0, Lcom/xueqiu/android/base/util/ap$2;->b:Ljava/lang/String;

    iget v5, p0, Lcom/xueqiu/android/base/util/ap$2;->e:I

    new-instance v6, Lcom/xueqiu/android/base/util/ap$2$1;

    invoke-direct {v6, p0, p1}, Lcom/xueqiu/android/base/util/ap$2$1;-><init>(Lcom/xueqiu/android/base/util/ap$2;Lrx/i;)V

    .line 1362
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/aj;->a(JLjava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 321
    return-void
.end method

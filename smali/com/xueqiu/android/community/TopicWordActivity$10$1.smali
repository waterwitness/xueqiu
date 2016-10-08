.class final Lcom/xueqiu/android/community/TopicWordActivity$10$1;
.super Lrx/i;
.source "TopicWordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/TopicWordActivity$10;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/xueqiu/android/community/TopicWordActivity$10;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicWordActivity$10;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicWordActivity$10$1;->b:Lcom/xueqiu/android/community/TopicWordActivity$10;

    iput-object p2, p0, Lcom/xueqiu/android/community/TopicWordActivity$10$1;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 526
    check-cast p1, Lcom/xueqiu/android/community/model/Status;

    .line 1539
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.statusPosted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1540
    const-string v1, "extra_task_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicWordActivity$10$1;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1541
    const-string v1, "extra_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1542
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    .line 1543
    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1544
    const v0, 0x7f070362

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 534
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 535
    return-void
.end method

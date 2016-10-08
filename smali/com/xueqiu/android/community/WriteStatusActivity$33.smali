.class final Lcom/xueqiu/android/community/WriteStatusActivity$33;
.super Lrx/i;
.source "WriteStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
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

.field final synthetic b:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1753
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$33;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$33;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 1757
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1753
    check-cast p1, Lcom/xueqiu/android/community/model/Status;

    .line 2767
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.statusPosted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2768
    const-string v1, "extra_task_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$33;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2769
    const-string v1, "extra_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2770
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    .line 2771
    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 2772
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$33;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V

    .line 1753
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1761
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1762
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$33;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const-string v1, "erro"

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V

    .line 1763
    return-void
.end method

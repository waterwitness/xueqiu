.class final Lcom/xueqiu/android/cube/CubeActivity$19$1;
.super Lrx/i;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity$19;->onClick(Landroid/content/DialogInterface;I)V
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

.field final synthetic b:Lcom/xueqiu/android/cube/CubeActivity$19;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity$19;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$19$1;->b:Lcom/xueqiu/android/cube/CubeActivity$19;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeActivity$19$1;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 1167
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1163
    check-cast p1, Lcom/xueqiu/android/community/model/Status;

    .line 2176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.statusPosted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2177
    const-string v1, "extra_task_id"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$19$1;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2178
    const-string v1, "extra_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2179
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    .line 2180
    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1163
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1171
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1172
    return-void
.end method

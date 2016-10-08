.class final Lcom/xueqiu/android/common/m$15;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/m;->C()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/m;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/xueqiu/android/common/m$15;->a:Lcom/xueqiu/android/common/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/xueqiu/android/common/m$15;->a:Lcom/xueqiu/android/common/m;

    invoke-static {v0}, Lcom/xueqiu/android/common/m;->c(Lcom/xueqiu/android/common/m;)I

    .line 386
    iget-object v0, p0, Lcom/xueqiu/android/common/m$15;->a:Lcom/xueqiu/android/common/m;

    invoke-static {v0}, Lcom/xueqiu/android/common/m;->d(Lcom/xueqiu/android/common/m;)V

    .line 387
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/m$15;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/UserListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    const-string v1, "extra_list_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/common/m$15;->a:Lcom/xueqiu/android/common/m;

    invoke-static {v2}, Lcom/xueqiu/android/common/m;->b(Lcom/xueqiu/android/common/m;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/xueqiu/android/common/m$15;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/m;->a(Landroid/content/Intent;)V

    .line 391
    iget-object v0, p0, Lcom/xueqiu/android/common/m$15;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070505

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 392
    return-void
.end method

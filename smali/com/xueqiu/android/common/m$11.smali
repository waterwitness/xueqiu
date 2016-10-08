.class final Lcom/xueqiu/android/common/m$11;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/m;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/m;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/xueqiu/android/common/m$11;->a:Lcom/xueqiu/android/common/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/xueqiu/android/common/m$11;->a:Lcom/xueqiu/android/common/m;

    invoke-static {v0}, Lcom/xueqiu/android/common/m;->b(Lcom/xueqiu/android/common/m;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/m$11;->a:Lcom/xueqiu/android/common/m;

    invoke-static {v0}, Lcom/xueqiu/android/common/m;->b(Lcom/xueqiu/android/common/m;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 308
    iget-object v1, p0, Lcom/xueqiu/android/common/m$11;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 309
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/common/m$11;->a:Lcom/xueqiu/android/common/m;

    invoke-static {v2}, Lcom/xueqiu/android/common/m;->b(Lcom/xueqiu/android/common/m;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 310
    iget-object v1, p0, Lcom/xueqiu/android/common/m$11;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 311
    iget-object v0, p0, Lcom/xueqiu/android/common/m$11;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07050f

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 313
    :cond_0
    return-void
.end method

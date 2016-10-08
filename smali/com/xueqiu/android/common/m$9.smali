.class final Lcom/xueqiu/android/common/m$9;
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
    .line 275
    iput-object p1, p0, Lcom/xueqiu/android/common/m$9;->a:Lcom/xueqiu/android/common/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    const-string v1, "extra_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 280
    const-string v1, "extra_need_back"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/common/m$9;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 283
    iget-object v0, p0, Lcom/xueqiu/android/common/m$9;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->startActivity(Landroid/content/Intent;)V

    .line 284
    iget-object v0, p0, Lcom/xueqiu/android/common/m$9;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f070508

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 285
    return-void
.end method

.class final Lcom/xueqiu/android/common/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/MainActivity;->b(Ljava/lang/String;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/MainActivity;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity$6;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 1186
    iget-boolean v1, v1, Lcom/xueqiu/android/base/t;->d:Z

    .line 384
    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$6;->a:Lcom/xueqiu/android/common/MainActivity;

    .line 2152
    invoke-static {v1, v0}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 391
    :goto_0
    return v0

    .line 388
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$6;->a:Lcom/xueqiu/android/common/MainActivity;

    const-class v2, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    const-string v1, "extra_write_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$6;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 391
    const/4 v0, 0x1

    goto :goto_0
.end method

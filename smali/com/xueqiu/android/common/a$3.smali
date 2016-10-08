.class final Lcom/xueqiu/android/common/a$3;
.super Ljava/lang/Object;
.source "AboutUsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/a;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/xueqiu/android/common/a$3;->a:Lcom/xueqiu/android/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/common/a$3;->a:Lcom/xueqiu/android/common/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a;->y()Landroid/app/Dialog;

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateOnlyWifi(Z)V

    .line 99
    new-instance v0, Lcom/xueqiu/android/common/a$3$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/a$3$1;-><init>(Lcom/xueqiu/android/common/a$3;)V

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateListener(Lcom/umeng/update/UmengUpdateListener;)V

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/common/a$3;->a:Lcom/xueqiu/android/common/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->forceUpdate(Landroid/content/Context;)V

    .line 111
    return-void
.end method

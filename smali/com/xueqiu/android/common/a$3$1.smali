.class final Lcom/xueqiu/android/common/a$3$1;
.super Ljava/lang/Object;
.source "AboutUsFragment.java"

# interfaces
.implements Lcom/umeng/update/UmengUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/a$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/a$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/a$3;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/xueqiu/android/common/a$3$1;->a:Lcom/xueqiu/android/common/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdateReturned(ILcom/umeng/update/UpdateResponse;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/common/a$3$1;->a:Lcom/xueqiu/android/common/a$3;

    iget-object v0, v0, Lcom/xueqiu/android/common/a$3;->a:Lcom/xueqiu/android/common/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a;->z()V

    .line 103
    if-nez p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/common/a$3$1;->a:Lcom/xueqiu/android/common/a$3;

    iget-object v0, v0, Lcom/xueqiu/android/common/a$3;->a:Lcom/xueqiu/android/common/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/umeng/update/UmengUpdateAgent;->showUpdateDialog(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const v0, 0x7f070035

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0
.end method

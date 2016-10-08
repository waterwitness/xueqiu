.class final Lcom/xueqiu/android/community/c/d$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/d;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/d;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/xueqiu/android/community/c/d$1;->a:Lcom/xueqiu/android/community/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 703
    .line 1706
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d$1;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->b(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/a/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d$1;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->b(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/a/ak;

    move-result-object v0

    .line 2581
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/community/a/ak;->f:Lcom/xueqiu/android/base/util/ar;

    .line 1708
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d$1;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->b(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/a/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->notifyDataSetChanged()V

    .line 703
    :cond_0
    return-void
.end method
